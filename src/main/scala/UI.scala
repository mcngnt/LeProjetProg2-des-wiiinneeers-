package ui

import scala.collection.mutable.ArrayBuffer

import sfml.graphics.{Color, Rect, RenderWindow, View}
import sfml.system.Vector2
import sfml.window.{Event, Keyboard, Mouse}

import audiomanager.*
import city.City
import connexion.*
import game.*
import monster.*
import renderer.*
import uielement.*
import utils.*
import vehicle.*

var ui = UI(None)

class UI(val window: Option[RenderWindow]):

    var camPos = Vector2(0f, 0f)
    var zoomFactor = 1f
    var winRect: Rect[Float] = Rect(0, 0, 0, 0)

    var screenMousePos = Vector2(0f, 0f)
    var worldMousePos = Vector2(0f, 0f)
    var uvMousePos = Vector2(0f, 0f)

    var startDragCamPos = Vector2(0f, 0f)
    var startDragMouseUVPos = Vector2(0f, 0f)
    var dragMode = false

    var hasLeftClicked = false
    var hasRightClicked = false

    var panelOrConfirmOpen = false

    var miaou = 0

    val elements = ArrayBuffer[UIElement]()
    /*will contain buttons, texts and panels*/

    val panel = UIPanel(Vector2(0.5f, 0.5f), Vector2(0.25f, 0.2f))
    elements += panel
    /*only one panel is used
    its attributes are modified depending on the vehicle it describes*/

    val confirm = UIConfirm(Vector2(0.375f, 0.4f), Vector2(0.25f, 0.2f))
    elements += confirm
    /*a confirm popup is used to delete a connexion*/

    val warning = UIWarning(Vector2(0.45f, 0.15f), Vector2(0.1f, 0.3f))
    elements += warning
    /*warns player before a disaster
    similar to panel*/

    val passTrainButton = UIButton(Vector2(0.2f, 0.9f), 0.06f, "passTrainButton")
    elements += passTrainButton
    val merchTrainButton = UIButton(Vector2(0.28f, 0.9f), 0.06f, "merchTrainButton")
    elements += merchTrainButton
    val passPlaneButton = UIButton(Vector2(0.36f, 0.9f), 0.06f, "passPlaneButton")
    elements += passPlaneButton
    val merchPlaneButton = UIButton(Vector2(0.44f, 0.9f), 0.06f, "merchPlaneButton")
    elements += merchPlaneButton
    val passBoatButton = UIButton(Vector2(0.52f, 0.9f), 0.06f, "passBoatButton")
    elements += passBoatButton
    val merchBoatButton = UIButton(Vector2(0.60f, 0.9f), 0.06f, "merchBoatButton")
    elements += merchBoatButton
    val lineTrainButton = UIButton(Vector2(0.74f, 0.9f), 0.04f, "lineTrainButton")
    elements += lineTrainButton
    val linePlaneButton = UIButton(Vector2(0.82f, 0.9f), 0.04f, "linePlaneButton")
    elements += linePlaneButton
    val lineBoatButton = UIButton(Vector2(0.9f, 0.9f), 0.04f, "lineBoatButton")
    elements += lineBoatButton

    val connexionTrainButton = UIButton(Vector2(0.74f, 0.9f), 0.04f, "connexionTrainButton")
    elements += connexionTrainButton
    val connexionBoatButton = UIButton(Vector2(0.82f, 0.9f), 0.04f, "connexionBoatButton")
    elements += connexionBoatButton
    val connexionPlaneButton = UIButton(Vector2(0.9f, 0.9f), 0.04f, "connexionPlaneButton")
    elements += connexionPlaneButton
    connexionTrainButton.selected = true

    elements += UIText(Vector2(0.05f, 0.05f), false, "", "moneyText", fontSize = 20)
    elements += UIButton(Vector2(0.035f, 0.06f), 0.04f, "coinButton")

    elements += UIText(Vector2(0.5f, 0.6f), true, "press R to replay", "loseText", fontSize = 15)

    val newCityWarningText = UIText(Vector2(0.1f, 0.05f), false, "A new city appeared!", "newCityWarning", Color.Red(), 15)
    elements += newCityWarningText
    val monsterAttackWarningText =
        UIText(Vector2(0.5f, 0.05f), true, "Monsters are attacking!", "monsterAttackWarning", Color.Red(), 15)
    elements += monsterAttackWarningText

    var notEnoughMoneyText = UIText(Vector2(0f, 0f), true, "you need more money", "notEnoughMoneyText", Color.Red())
    notEnoughMoneyText.moveVec = Vector2(0f, -0.1f)
    notEnoughMoneyText.lifetime = None
    notEnoughMoneyText.isActive = false
    elements += notEnoughMoneyText

    var savedText = UIText(Vector2(0.5f, 0.6f), true, "saved", "savedText", fontSize = 15)
    savedText.isActive = false
    elements += savedText

    var selectedConnexionType: ConnexionType = ConnexionType.Train

    var creatingConnexion = false
    var lastClosestCity: Option[City] = None
    var isLastCityStartConnexion = false

    var oldClosestCity: Option[City] = None

    var vehicleHeld: Option[Vehicle] = None
    var starterTrain = PassengerVehicle(150, 8, ConnexionType.Train)
    var starterPlane = PassengerVehicle(200, 8, ConnexionType.Plane)
    var starterBoat = PassengerVehicle(130, 8, ConnexionType.Boat)
    var starterMerchTrain = MerchandiseVehicle(160, 9, ConnexionType.Train)
    var starterMerchPlane = MerchandiseVehicle(220, 9, ConnexionType.Plane)
    var starterMerchBoat = MerchandiseVehicle(150, 9, ConnexionType.Boat)

    def worldsize_to_screensize(size: Float): Float =
        size * zoomFactor

    def uvsize_to_screensize(size: Float): Float =
        size * window.get.size.x

    def worldpos_to_screenpos(wpos: Vector2[Float]): Vector2[Float] =
        (wpos - camPos) * zoomFactor + Vector2(window.get.size.x / 2f, window.get.size.y / 2f)

    def screenpos_to_worldpos(spos: Vector2[Float]): Vector2[Float] =
        camPos + (spos - Vector2(window.get.size.x / 2f, window.get.size.y / 2f)) / zoomFactor

    def uvpos_to_screenpos(uvpos: Vector2[Float]): Vector2[Float] =
        Vector2(uvpos.x * window.get.size.x, uvpos.y * window.get.size.y)

    def screenpos_to_uvpos(spos: Vector2[Float]) =
        Vector2(spos.x / window.get.size.x, spos.y / window.get.size.y)

    def uvpos_to_worldpos(uvpos: Vector2[Float]): Vector2[Float] =
        screenpos_to_worldpos(uvpos_to_screenpos(uvpos))

    def worldpos_to_uvpos(wpos: Vector2[Float]): Vector2[Float] =
        screenpos_to_uvpos(worldpos_to_screenpos(wpos))

    def create_popup_text(
        uvpos: Vector2[Float],
        content: String,
        name: String = "popupText",
        col: Color = Color.Black(),
        delay: Float = 0f
    ): Unit =
        val t = UIText(uvpos, true, content, name, col)
        t.moveVec = Vector2(0f, -0.15f)
        t.set_lifetime(1.5f)
        if delay != 0 then
            t.isActive = false
            t.delay = delay
        elements += t

    def create_transaction_text(uvpos: Vector2[Float], nb: Int, isValid: Boolean) =
        /*creates a text
        if valid transaction: shows money spent
        if invalid: tells player how much they need*/
        var showNB = nb
        if !isValid then showNB *= -1
        var textCol = Color.Black()
        if showNB != 0 then
            var content = s"${showNB}"
            if showNB > 0 then content = "+" + content
            if !isValid then
                content = "you need " + content
                textCol = Color.Red()
            create_popup_text(uvpos, content, "transactionText", textCol)

    def create_xp_text(wpos: Vector2[Float], nb: Int) =
        /*creates a text that shows xp gains*/
        val content = s"+ ${nb} XP"
        create_popup_text(worldpos_to_uvpos(wpos), content, "XPText", delay = 0.2f)

    def send_saved_test() =
        savedText.isActive = true
        savedText.set_lifetime(1.5f)

    def compatible_connexion(vehicle: Vehicle, connexion: Connexion, uvpos: Vector2[Float]) =
        /*checks if vehicle can use this connexion
        if not, creates error text*/
        val compatible = (connexion.ctype == vehicle.vtype)
        if !compatible then create_popup_text(uvpos, "wrong connexion for this vehicle", col = Color.Red())
        compatible

    def vehicle_in_click_range(wpos: Vector2[Float], vehicle: Vehicle) =
        dist(wpos, vehicle.pos()) < 30f

    def select_connexion_type(ctype: ConnexionType) =
        selectedConnexionType = ctype
        ctype match
            case ConnexionType.Train =>
                connexionTrainButton.selected = true
                connexionBoatButton.selected = false
                connexionPlaneButton.selected = false
            case ConnexionType.Boat =>
                connexionBoatButton.selected = true
                connexionTrainButton.selected = false
                connexionPlaneButton.selected = false
            case ConnexionType.Plane =>
                connexionPlaneButton.selected = true
                connexionTrainButton.selected = false
                connexionBoatButton.selected = false

    def handle_events() =
        hasLeftClicked = false
        hasRightClicked = false
        screenMousePos = Vector2(Mouse.position(window.get).x.toFloat, Mouse.position(window.get).y.toFloat)
        uvMousePos = Vector2(screenMousePos.x / window.get.size.x, screenMousePos.y / window.get.size.y)
        worldMousePos = screenpos_to_worldpos(screenMousePos)
        for event <- window.get.pollEvent() do
            event match
                case Event.Closed() => window.get.close()
                case Event.Resized(width, height) =>
                    window.get.view = View(Rect(0, 0, width.toFloat, height.toFloat))
                    winRect = Rect(0, 0, window.get.size.x.toFloat, window.get.size.y.toFloat)

                case Event.MouseButtonPressed(b, _, _) =>
                    b match
                        case Mouse.Button.Left =>
                            hasLeftClicked = true
                            if dragMode == false && !panelOrConfirmOpen then
                                startDragMouseUVPos = uvMousePos
                                startDragCamPos = camPos
                                dragMode = true
                        case Mouse.Button.Right =>
                            hasRightClicked = true
                        case _ => ()
                case Event.MouseButtonReleased(b, _, _) =>
                    b match
                        case Mouse.Button.Left =>
                            dragMode = false
                            creatingConnexion = false
                            lastClosestCity = None
                            if vehicleHeld != None then
                                val res = game.world.closest_connexion(worldMousePos)
                                /*vehicle is dropped on connexion "res"*/
                                if res != None then
                                    val (connexion, percent, point) = res.get
                                    if dist(worldpos_to_screenpos(point), screenMousePos) < 100 then
                                        if compatible_connexion(vehicleHeld.get, connexion, uvMousePos) && game.comp.buy_vehicle(
                                                vehicleHeld.get,
                                                worldMousePos
                                            )
                                            /*check if it's the right connexion type and buy vehicle if player can afford it*/
                                        then
                                            vehicleHeld.get match
                                                case _: PassengerVehicle =>
                                                    game.world.passenger_vehicles += vehicleHeld.get.asInstanceOf[PassengerVehicle]
                                                    vehicleHeld.get.vtype match
                                                        case ConnexionType.Train => game.comp.nbPassengerTrains += 1
                                                        case ConnexionType.Plane => game.comp.nbPassengerPlanes += 1
                                                        case _                   => game.comp.nbPassengerBoats += 1
                                                case _ =>
                                                    game.world.merchandise_vehicles += vehicleHeld.get
                                                        .asInstanceOf[MerchandiseVehicle]
                                                    vehicleHeld.get.vtype match
                                                        case ConnexionType.Train => game.comp.nbMerchandiseTrains += 1
                                                        case ConnexionType.Plane => game.comp.nbMerchandisePlanes += 1
                                                        case _                   => game.comp.nbMerchandiseBoats += 1
                                            vehicleHeld.get.change_connexion(Some(connexion))
                                            vehicleHeld.get.percentage = percent
                                            audioManager.play_sound("dropVehicule")

                                vehicleHeld = None
                        case Mouse.Button.Right =>
                            for connexion <- game.world.connexions do
                                if !panelOrConfirmOpen && connexion.in_click_range(uvMousePos) then
                                    confirm.connexion = Some(connexion)
                                    confirm.isActive = true
                        case _ => ()
                case Event.KeyPressed(k, _, _, _, _, _) =>
                    k match
                        case Keyboard.Key.R     => game.init() /*replay button*/
                        case Keyboard.Key.Space => game.isPause = !game.isPause /*play/pause button*/
                        case Keyboard.Key.F9    => game.load_save()
                        case Keyboard.Key.F5    => game.save()
                        case Keyboard.Key.M =>
                            if !panelOrConfirmOpen then miaou = 1
                            else if panel.isActive then
                                panel.vehicle.get.maintenance()
                                panel.isActive = false
                        case Keyboard.Key.I => if miaou == 1 then miaou = 2
                        case Keyboard.Key.A => if miaou == 2 then miaou = 3
                        case Keyboard.Key.O => if miaou == 3 then miaou = 4
                        case Keyboard.Key.U =>
                            if miaou == 4 && !panelOrConfirmOpen then game.tataDoritosLuc()
                            else if panel.isActive then
                                panel.vehicle.get.upgrade()
                                panel.isActive = false
                        case Keyboard.Key.Y =>
                            if confirm.isActive then
                                game.comp.reimburse_connexion(confirm.connexion.get.ctype, confirm.connexion.get.get_wpos())
                                game.world.connexions -= confirm.connexion.get
                                confirm.isActive = false
                        case Keyboard.Key.N     => confirm.isActive = false
                        case Keyboard.Key.T     => select_connexion_type(ConnexionType.Train)
                        case Keyboard.Key.B     => select_connexion_type(ConnexionType.Boat)
                        case Keyboard.Key.P     => select_connexion_type(ConnexionType.Plane)
                        case Keyboard.Key.Enter => panel.isActive = false
                        case Keyboard.Key.H     => camPos = camPos + Vector2(-20f, 0f)
                        case Keyboard.Key.J     => camPos = camPos + Vector2(0f, 20f)
                        case Keyboard.Key.K     => camPos = camPos + Vector2(0f, -20f)
                        case Keyboard.Key.L     => camPos = camPos + Vector2(20f, 0f)
                        //     println((uvMousePos.x * 2f - 1f))
                        //     println((uvMousePos.y * 2f - 1f))
                        case _ => ()
                case _ => ()

    def update() =

        /*check if panel of confirm is active*/
        panelOrConfirmOpen = panel.isActive || confirm.isActive

        /*player is moving the map*/
        if dragMode && startDragMouseUVPos.y < 0.8f && !creatingConnexion then
            camPos = startDragCamPos + (uvpos_to_screenpos(startDragMouseUVPos) - screenMousePos) / zoomFactor

        // Handles connexion ceation (check connexion constraints, cities it needs to be attached to,...)
        if creatingConnexion then
            val closestCity = game.world.closest_city(worldMousePos)
            if closestCity != None && closestCity != lastClosestCity && dist(worldMousePos, closestCity.get.pos) < 60 then
                if closestCity != oldClosestCity then
                    if game.world.is_connexion_legal(
                            lastClosestCity.get,
                            closestCity.get,
                            game.get_biome(lastClosestCity.get.pos, true),
                            game.get_biome(closestCity.get.pos, true),
                            selectedConnexionType
                        )
                    then
                        if game.comp.buy_connexion(selectedConnexionType, worldMousePos) then
                            val _ = game.world.create_connexion(closestCity.get, lastClosestCity.get, selectedConnexionType)
                            audioManager.play_sound("line")
                    else create_popup_text(uvMousePos, "impossible connexion", col = Color.Red())
                    lastClosestCity = closestCity
                oldClosestCity = closestCity
            else oldClosestCity = None
        else if hasLeftClicked && !panel.isActive then
            val closestCity = game.world.closest_city(worldMousePos)
            if closestCity != None && dist(screenMousePos, worldpos_to_screenpos(closestCity.get.pos)) < 60 then
                creatingConnexion = true
                lastClosestCity = closestCity

        // Connexion buttons
        if hasLeftClicked && !panelOrConfirmOpen && connexionTrainButton.in_click_range(uvMousePos) then
            select_connexion_type(ConnexionType.Train)
        if hasLeftClicked && !panelOrConfirmOpen && connexionBoatButton.in_click_range(uvMousePos) then
            select_connexion_type(ConnexionType.Boat)
        if hasLeftClicked && !panelOrConfirmOpen && connexionPlaneButton.in_click_range(uvMousePos) then
            select_connexion_type(ConnexionType.Plane)

        // Vehicules buttons
        if hasLeftClicked && !panelOrConfirmOpen && passTrainButton.in_click_range(uvMousePos) then
            vehicleHeld = Some(starterTrain.copy())
        if hasLeftClicked && !panelOrConfirmOpen && merchTrainButton.in_click_range(uvMousePos) then
            vehicleHeld = Some(starterMerchTrain.copy())
        if hasLeftClicked && !panelOrConfirmOpen && passPlaneButton.in_click_range(uvMousePos) then
            vehicleHeld = Some(starterPlane.copy())
        if hasLeftClicked && !panelOrConfirmOpen && merchPlaneButton.in_click_range(uvMousePos) then
            vehicleHeld = Some(starterMerchPlane.copy())
        if hasLeftClicked && !panelOrConfirmOpen && passBoatButton.in_click_range(uvMousePos) then
            vehicleHeld = Some(starterBoat.copy())
        if hasLeftClicked && !panelOrConfirmOpen && merchBoatButton.in_click_range(uvMousePos) then
            vehicleHeld = Some(starterMerchBoat.copy())

        /*manage panel buttons*/
        for e <- panel.elements do
            e match
                case button: UIButton =>
                    button.check_hovered(uvMousePos, panelOrConfirmOpen)
                    if hasLeftClicked && button.in_click_range(uvMousePos) && panel.isActive then
                        button.name match
                            case "closeButton"       => panel.isActive = false
                            case "upgradeButton"     => panel.vehicle.get.upgrade()
                            case "maintenanceButton" => panel.vehicle.get.maintenance()
                case _ => ()

        /*close panel if player clicks outside*/
        if hasLeftClicked && panel.isActive && !panel.in_click_range(uvMousePos) then panel.isActive = false

        /*manage confirm buttons*/
        for e <- confirm.elements do
            e match
                case button: UIButton =>
                    button.check_hovered(uvMousePos, panelOrConfirmOpen)
                    if hasLeftClicked && button.in_click_range(uvMousePos) && confirm.isActive then
                        val connexion = confirm.connexion.get
                        button.name match
                            case "yesButton" =>
                                game.comp.reimburse_connexion(connexion.ctype, connexion.get_wpos())
                                game.world.connexions -= connexion
                            case _ => ()
                        confirm.isActive = false
                case _ => ()

        /*kill monster if player clicks twice or if broken vehicle*/
        val monstersToRemove = ArrayBuffer[Monster]()
        var monsterClicked = false
        for monster <- game.world.monsters do
            if hasLeftClicked && dist(worldMousePos, monster.pos) < 30f && !monsterClicked && !game.isPause then
                monsterClicked = true
                audioManager.play_sound("clickMonster")
                if !monster.clicked then monster.clicked = true
                else monstersToRemove += monster
            if monster.onTarget && monster.target.get.broken then monstersToRemove += monster
        for monster <- monstersToRemove do game.world.monsters -= monster

        /*open panel if player clicks on vehicle*/
        for vehicle <- game.world.passenger_vehicles do
            if hasLeftClicked && vehicle_in_click_range(worldMousePos, vehicle) && !monsterClicked then
                audioManager.play_sound("panel")
                panel.vehicle = Some(vehicle)
                panel.isActive = true
                creatingConnexion = false
        for vehicle <- game.world.merchandise_vehicles do
            if hasLeftClicked && vehicle_in_click_range(worldMousePos, vehicle) && !monsterClicked then
                audioManager.play_sound("panel")
                panel.vehicle = Some(vehicle)
                panel.isActive = true
                creatingConnexion = false

        /*update elements and remove inactive temporary texts*/
        val elementsToRemove = ArrayBuffer[UIElement]()
        for element <- elements do
            element match
                case button: UIButton => button.check_hovered(uvMousePos, panelOrConfirmOpen)
                case text: UIText =>
                    text.name match
                        case "moneyText"            => text.content = s"${game.comp.money}"
                        case "passTrainsOwnedText"  => text.content = s"owned : ${game.comp.nbPassengerTrains}"
                        case "merchTrainsOwnedText" => text.content = s"owned : ${game.comp.nbMerchandiseTrains}"
                        case "passPlanesOwnedText"  => text.content = s"owned : ${game.comp.nbPassengerPlanes}"
                        case "merchPlanesOwnedText" => text.content = s"owned : ${game.comp.nbMerchandisePlanes}"
                        case "passBoatsOwnedText"   => text.content = s"owned : ${game.comp.nbPassengerBoats}"
                        case "merchBoatsOwnedText"  => text.content = s"owned : ${game.comp.nbMerchandiseBoats}"
                        case "loseText"             => text.isActive = game.isLost
                        case "transactionText"      => if !text.isActive then elementsToRemove += text
                        case "VehicleNameText"      => if !text.isActive then elementsToRemove += text
                        case "XPText"               => if !text.isActive && text.delay == 0 then elementsToRemove += text
                        case "monsterAttackWarning" => text.isActive = game.world.ongoingMonsterAttack
                        case "newCityWarning"       => text.isActive = game.world.notNoticedNewCity
                        case _                      => ()
                case panel: UIPanel => panel.update()
                case _              => ()

        for el <- elementsToRemove do elements -= el

        /*display transactions and empty tickets*/
        for (nb, wpos, isValid) <- game.comp.tickets do create_transaction_text(worldpos_to_uvpos(wpos), nb, isValid)
        game.comp.tickets = ArrayBuffer[(Int, Vector2[Float], Boolean)]()

    def fixed_update(dt: Float) =
        for element <- elements do element.fixed_update(dt)
