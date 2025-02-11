package uielement

import scala.collection.mutable.ArrayBuffer

import sfml.graphics.Color
import sfml.system.Vector2

import audiomanager.*
import connexion.*
import disaster.*
import ui.*
import utils.*
import vehicle.*

enum ButtonType:
    case Fixed
    case Hover

abstract class UIElement(var uvpos: Vector2[Float], var color: Color, val name: String):
    var isActive = true
    def fixed_update(dt: Float): Unit
    def update(): Unit

class UIButton(
    uvpos: Vector2[Float],
    val uvsize: Float,
    name: String = "UIButton",
    color: Color = Color.Blue(),
    val panel: Option[UIPanel] = None,
    val confirm: Option[UIConfirm] = None
) extends UIElement(uvpos, color, name):

    var is_hovered = false
    var selected = false

    def real_uv_pos(): Vector2[Float] =
        if panel.isDefined then
            ui.screenpos_to_uvpos(
                ui.uvpos_to_screenpos(panel.get.uvpos) + Vector2(
                    uvpos.x * ui.uvpos_to_screenpos(panel.get.uvsize).x,
                    uvpos.y * ui.uvpos_to_screenpos(panel.get.uvsize).y
                )
            )
        else uvpos

    def in_click_range(uvMousePos: Vector2[Float]) =
        dist(uvMousePos, real_uv_pos()) < uvsize

    def check_hovered(uvMousePos: Vector2[Float], panelActive: Boolean) =
        is_hovered = in_click_range(uvMousePos)
        if panel.isEmpty && confirm.isEmpty then is_hovered = is_hovered && !panelActive

    def fixed_update(dt: Float) =
        ()
    def update() =
        ()

class UIText(
    uvpos: Vector2[Float],
    val centered: Boolean,
    var content: String,
    name: String = "UIText",
    color: Color = Color.Black(),
    var fontSize: Int = 10
) extends UIElement(uvpos, color, name):

    var moveVec = Vector2(0f, 0f)
    var lifetime: Option[Float] = None
    var delay = 0f
    /*delay: time before text is activated*/

    val baseColor = Color.apply(color.r, color.g, color.b)
    var baseLifetime = 0f

    def set_lifetime(l: Float) =
        lifetime = Some(l)
        baseLifetime = l

    override def fixed_update(dt: Float): Unit =
        if isActive then
            uvpos += moveVec * dt
            if !lifetime.isEmpty then
                color = Color.apply(baseColor.r, baseColor.g, baseColor.b, (255f * (lifetime.get / baseLifetime)).toInt)
                lifetime = Some(lifetime.get - dt)
                if lifetime.get <= 0f then isActive = false
        if delay != 0 then
            delay -= dt
            if delay <= 0 then
                isActive = true
                delay = 0

    def update() =
        ()

class UIPanel(uvpos: Vector2[Float], val uvsize: Vector2[Float], name: String = "UIPanel", color: Color = Color.Black())
    extends UIElement(uvpos, color, name):

    /*opened when player clicks on a vehicle
    gives info about vehicle and "upgrade" and "maintenance" options*/

    isActive = false
    var wpos = Vector2(0f, 0f)
    var vehicle: Option[Vehicle] = None

    val elements = ArrayBuffer[UIElement]()

    // var closeButton = UIButton(Vector2(0.95f, 0.1f), 0.02f, "closeButton", panel = Some(this))
    // elements += closeButton

    var upgradeButton = UIButton(Vector2(0.3f, 0.75f), 0.08f, "upgradeButton", panel = Some(this))
    elements += upgradeButton
    var maintenanceButton = UIButton(Vector2(0.7f, 0.75f), 0.08f, "maintenanceButton", panel = Some(this))
    elements += maintenanceButton

    var vehicleLifeText = UIText(Vector2(0.5f, 0.15f), true, get_vehicleLifeText(), "panelText")
    elements += vehicleLifeText

    // var vehicleTypeText = UIText(Vector2(0.5f, 0.15f), true, get_vehicleTypeText(), "panelText")
    // elements += vehicleTypeText
    var vehicleSizeText = UIText(Vector2(0.5f, 0.3f), true, get_vehicleSizeText(), "panelText")
    elements += vehicleSizeText
    var vehiclePowerText = UIText(Vector2(0.5f, 0.45f), true, get_vehiclePowerText(), "panelText")
    elements += vehiclePowerText

    def get_vehicleTypeText() =
        if vehicle != None then
            val text = s"${vehicle.get match
                    case _: PassengerVehicle =>
                        vehicle.get.vtype match
                            case ConnexionType.Train => "Passenger Train"
                            case ConnexionType.Plane => "Passenger Plane"
                            case _                   => "Passenger Boat"
                    case _ =>
                        vehicle.get.vtype match
                            case ConnexionType.Train => "Merchandise Train"
                            case ConnexionType.Plane => "Merchandise Plane"
                            case _                   => "Merchanise Boat"
                }"
            text
        else ""

    def get_vehicleLifeText() =
        if vehicle != None then f"Life : ${vehicle.get.hp}%.2f"
        else ""

    def get_vehicleSizeText() =
        if vehicle != None then
            val text = s"Capacity : ${vehicle.get.size} ${vehicle.get match
                    case _: PassengerVehicle => "passengers"
                    case _                   => "kg"
                }"
            text
        else ""

    def get_vehiclePowerText() =
        if vehicle != None then
            val text = s"Power : ${vehicle.get.power}"
            text
        else ""

    def fixed_update(dt: Float) =
        ()

    def in_click_range(uvMousePos: Vector2[Float]) =
        uvMousePos.x >= uvpos.x - uvsize.x / 2 && uvMousePos.x <= uvpos.x + uvsize.x / 2 && uvMousePos.y >= uvpos.y && uvMousePos.y <= uvpos.y + uvsize.y

    override def update() =
        vehicleLifeText.content = get_vehicleLifeText()
        vehicleSizeText.content = get_vehicleSizeText()
        vehiclePowerText.content = get_vehiclePowerText()
        if vehicle != None then wpos = vehicle.get.pos()
        uvpos = ui.worldpos_to_uvpos(wpos) + Vector2(0.02f, 0.02f)

class UIWarning(uvpos: Vector2[Float], val uvsize: Vector2[Float], name: String = "UIWarning", color: Color = Color.Black())
    extends UIElement(uvpos, color, name):

    var disaster: Option[Disaster] = None
    var lifetime = 0f
    isActive = false

    val fixedText1 = UIText(Vector2(0.5f, 0.3f), true, "Warning :", "warningText")
    val fixedText2 = UIText(Vector2(0.5f, 0.34f), true, "incoming", "warningText")
    var changingText = UIText(Vector2(0.5f, 0.38f), true, get_warning_text(), "warningText")
    val texts = ArrayBuffer[UIText]()
    texts += fixedText1
    texts += fixedText2
    texts += changingText

    def activate() =
        audioManager.play_sound("warning")
        isActive = true
        lifetime = 3f

    def get_warning_text() =
        if disaster.isDefined then
            disaster.get.dtype match
                case DisasterType.Earthquake => "earthquake"
                case DisasterType.Sandstorm  => "sandstorm"
                case DisasterType.OilSpill   => "oil spill"
        else ""

    override def fixed_update(dt: Float) =
        changingText.content = get_warning_text()
        lifetime -= dt
        if lifetime <= 0 then isActive = false

    def update() =
        ()

class UIConfirm(uvpos: Vector2[Float], val uvsize: Vector2[Float], name: String = "UIConfirm", color: Color = Color.Black())
    extends UIElement(uvpos, color, name):

    isActive = false

    var connexion: Option[Connexion] = None

    val elements = ArrayBuffer[UIElement]()

    var yesButton = UIButton(uvpos + mult(uvsize, Vector2(0.3f, 0.75f)), 0.04f, "yesButton", confirm = Some(this))
    elements += yesButton
    var noButton = UIButton(uvpos + mult(uvsize, Vector2(0.7f, 0.75f)), 0.04f, "noButton", confirm = Some(this))
    elements += noButton

    var text = UIText(Vector2(0.5f, 0.3f), true, "Do you want to delete this connexion?", "confirmText")
    elements += text

    def fixed_update(dt: Float) =
        ()

    def update() =
        ()
