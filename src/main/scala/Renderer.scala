package renderer

import scala.collection.mutable.Map
import scala.math.{abs, floor, max, sin}

import sfml.graphics.{RenderWindow, RenderStates, RenderTexture}
import sfml.graphics.{Color, Font, Sprite, Text, Texture}
import sfml.graphics.{CircleShape, RectangleShape}
import sfml.graphics.{Shader, ShaderType}
import sfml.system.{Vector2, Vector3}

import audiomanager.*
import city.City
import connexion.*
import disaster.*
import game.*
import monster.*
import ui.*
import uielement.*
import utils.*
import vehicle.*
import tata.*

val RESOURCES_DIR = "src/main/resources/"

class Renderer(val window: RenderWindow):

    val renderTex = RenderTexture()
    var renderTexSize: Vector2[Int] = Vector2(0, 0)

    val textures = Map[String, sfml.graphics.Texture]()
    val sprites = Map[String, sfml.graphics.Sprite]()

    def create_sprite(name: String, scl: Vector2[Float] = Vector2(1f, 1f)) =
        textures(name) = Texture()
        if !(textures(name).loadFromFile(RESOURCES_DIR + name + ".png")) then System.exit(1)
        sprites(name) = Sprite(textures(name))
        sprites(name).scale = scl

    val font = Font()
    if !(font.loadFromFile(RESOURCES_DIR + "FiraSans.ttf")) then System.exit(1)

    val text = Text("sample", font, 20)
    text.color = Color.Black()

    // Importing every sprite needed by the renderer

    create_sprite("citysquare", Vector2(.3f, 0.3f))
    create_sprite("citycircle", Vector2(.3f, 0.3f))
    create_sprite("citytriangle", Vector2(.3f, 0.3f))

    create_sprite("citysquareicon", Vector2(.15f, 0.15f))
    create_sprite("citycircleicon", Vector2(.15f, 0.15f))
    create_sprite("citytriangleicon", Vector2(.15f, 0.15f))

    create_sprite("passtrainbutton", Vector2(.6f, 0.6f))
    create_sprite("merchtrainbutton", Vector2(.6f, 0.6f))
    create_sprite("passplanebutton", Vector2(.6f, 0.6f))
    create_sprite("merchplanebutton", Vector2(.6f, 0.6f))
    create_sprite("passboatbutton", Vector2(.6f, 0.6f))
    create_sprite("merchboatbutton", Vector2(.6f, 0.6f))

    create_sprite("closebutton", Vector2(.2f, 0.2f))
    create_sprite("upgradebutton", Vector2(.45f, 0.45f))
    create_sprite("maintenancebutton", Vector2(.45f, 0.45f))

    create_sprite("connexiontrain", Vector2(.7f, 0.7f))
    create_sprite("connexionboat", Vector2(.7f, 0.7f))
    create_sprite("connexionplane", Vector2(.7f, 0.7f))

    create_sprite("train", Vector2(.2f, 0.2f))
    create_sprite("boat", Vector2(.2f, 0.2f))
    create_sprite("plane", Vector2(.2f, 0.2f))
    create_sprite("brokentrain", Vector2(.2f, 0.2f))
    create_sprite("brokenboat", Vector2(.2f, 0.2f))
    create_sprite("brokenplane", Vector2(.2f, 0.2f))

    create_sprite("env_ocean", Vector2(.3f, 0.3f))
    create_sprite("env_plain", Vector2(.3f, 0.3f))
    create_sprite("env_desert", Vector2(.3f, 0.3f))
    create_sprite("env_montain", Vector2(.3f, 0.3f))

    create_sprite("corner")
    create_sprite("half")
    create_sprite("triplecorner")
    create_sprite("full")
    create_sprite("squarecorner")

    create_sprite("merch", Vector2(.1f, 0.1f))
    create_sprite("coin", Vector2(.2f, 0.2f))
    create_sprite("broken", Vector2(.13f, 0.13f))
    create_sprite("brokenred", Vector2(.13f, 0.13f))

    create_sprite("monster", Vector2(0.05f, 0.05f))

    create_sprite("earthquake", Vector2(0.4f, 0.4f))
    create_sprite("sandstorm", Vector2(0.4f, 0.4f))
    create_sprite("oilSpill", Vector2(0.4f, 0.4f))

    create_sprite("yesbutton", Vector2(.45f, 0.45f))
    create_sprite("nobutton", Vector2(.45f, 0.45f))

    create_sprite("tatadoritoslucright", Vector2(.3f, 0.3f))
    create_sprite("tatadoritoslucleft", Vector2(.3f, 0.3f))

    create_sprite("connexiontrainselected", Vector2(.7f, 0.7f))
    create_sprite("connexionboatselected", Vector2(.7f, 0.7f))
    create_sprite("connexionplaneselected", Vector2(.7f, 0.7f))

    sprites("corner").scale =
        Vector2(game.biomeCellSize / sprites("corner").localBounds.width, game.biomeCellSize / sprites("corner").localBounds.width)
    sprites("half").scale =
        Vector2(game.biomeCellSize / sprites("half").localBounds.width, game.biomeCellSize / sprites("half").localBounds.width)
    sprites("triplecorner").scale = Vector2(
        game.biomeCellSize / sprites("triplecorner").localBounds.width,
        game.biomeCellSize / sprites("triplecorner").localBounds.width
    )
    sprites("full").scale =
        Vector2(game.biomeCellSize / sprites("full").localBounds.width, game.biomeCellSize / sprites("full").localBounds.width)
    sprites("squarecorner").scale = Vector2(
        game.biomeCellSize / sprites("squarecorner").localBounds.width,
        game.biomeCellSize / sprites("squarecorner").localBounds.width
    )

    val biomeShader = Shader()
    if !(biomeShader.loadFromFile(RESOURCES_DIR + "biome.frag", ShaderType.Fragment)) then System.exit(1)

    val postProcessShader = Shader()
    if !(postProcessShader.loadFromFile(RESOURCES_DIR + "post_process.frag", ShaderType.Fragment)) then System.exit(1)

    val circShape = CircleShape()
    circShape.outlineColor = Color.Black()

    val rectShape = RectangleShape()
    rectShape.outlineColor = Color.Black()

    def draw_text(spos: Vector2[Float], centered: Boolean, content: String, color: Color = Color.Black(), size: Int = 20) =
        text.string = content
        text.color = color
        text.characterSize = size
        if centered then text.origin = Vector2(text.localBounds.width / 2f, text.localBounds.height / 2f)
        else text.origin = Vector2(0, text.localBounds.height / 2f)
        text.position = spos
        renderTex.draw(text)

    def draw_circle(spos: Vector2[Float], rad: Float = 20, col: Color = Color.Black(), outlineThickness: Float = 0) =
        circShape.fillColor = col
        circShape.radius = rad
        circShape.origin = Vector2(circShape.localBounds.width / 2f, circShape.localBounds.height / 2f)
        circShape.position = spos
        circShape.outlineThickness = outlineThickness
        renderTex.draw(circShape)

    def draw_sprite(
        sprite: Sprite,
        spos: Vector2[Float],
        centered: Boolean = true,
        zoomFactor: Float = 1f,
        opacity: Float = 1f,
        color: Color = Color.White(),
        rot: Float = 0f,
        outlineThickness: Float = 0
    ) =
        if centered then sprite.origin = Vector2(sprite.localBounds.width / 2f, sprite.localBounds.height / 2f)
        else sprite.origin = Vector2(0, 0)
        sprite.color = Color.apply(color.r, color.g, color.b, max((opacity * 255f).toInt, 0))
        sprite.scale = sprite.scale * zoomFactor
        sprite.position = spos
        sprite.rotation = rot
        if ui.winRect.intersects(sprite.globalBounds).isDefined then renderTex.draw(sprite)
        sprite.scale = sprite.scale / zoomFactor

    def draw_rectangle(
        topleft: Vector2[Float],
        size: Vector2[Float],
        color: Color = Color.Black(),
        outlineThickness: Float = 0,
        rot: Float = 0
    ) =
        rectShape.fillColor = color
        rectShape.position = topleft
        rectShape.size = size
        rectShape.origin = Vector2(0, 0)
        rectShape.rotation = 0
        rectShape.outlineThickness = outlineThickness
        rectShape.rotation = rot
        renderTex.draw(rectShape)

    def draw_trail(
        spos1: Vector2[Float],
        spos2: Vector2[Float],
        color: Color = Color.Red(),
        size: Float = 10f,
        outlineThickness: Float = 0
    ) =
        rectShape.fillColor = color
        rectShape.position = spos1
        rectShape.rotation = 0
        rectShape.size = Vector2(vec2_norm(spos1 - spos2), size)
        rectShape.origin = Vector2(0, rectShape.globalBounds.height / 2f)
        rectShape.rotation = angle_of(spos1, spos2)
        rectShape.outlineThickness = outlineThickness
        renderTex.draw(rectShape)

    def draw_dotted_trail(
        spos1: Vector2[Float],
        spos2: Vector2[Float],
        color: Color = Color.Red(),
        size: Float = 10f,
        space: Float = 20f
    ) =
        val pos = spos1
        val nb = (vec2_norm(spos1 - spos2) / (space * 2f)).toInt
        val dir = normalize(spos2 - spos1)
        for i <- 0 to nb do
            draw_trail(pos, pos + dir * space, color, size)
            pos += dir * space * 2f

    def get_city_sprite(name: String, icon: Boolean = false): Sprite =
        if icon then
            name match
                case "Circle"   => sprites("citycircleicon")
                case "Triangle" => sprites("citytriangleicon")
                case _          => sprites("citysquareicon")
        else
            name match
                case "Circle"   => sprites("citycircle")
                case "Triangle" => sprites("citytriangle")
                case _          => sprites("citysquare")

    def draw_passengers(
        passengers: Map[String, Int],
        startPos: Vector2[Float],
        padding: Vector2[Float]
    ): Vector2[Float] =
        var ppos = Vector2(startPos.x, startPos.y)
        var iter = 0
        var nb = 0
        for (name, number) <- passengers do
            iter = number
            while iter >= 1 do
                draw_sprite(get_city_sprite(name, true), ppos, true)
                ppos += Vector2(padding.x, 0f)
                iter -= 1
                nb += 1
                if nb >= 4 then
                    nb = 0
                    ppos = Vector2(startPos.x, ppos.y + padding.y)
        if ppos.x == startPos.x then Vector2(startPos.x, ppos.y)
        else Vector2(startPos.x, ppos.y + padding.y)

    def draw_produced_merchandise(
        production: Map[BiomeType, Int],
        startPos: Vector2[Float],
        padding: Vector2[Float]
    ): Unit =
        var ppos = Vector2(startPos.x, startPos.y)
        var iter = 0
        var nb = 0
        for (btype, number) <- production do
            iter = number
            while iter >= 1 do
                draw_sprite(sprites("merch"), ppos, true, color = get_biome_color(btype, true))
                ppos += Vector2(padding.x, 0f)
                iter -= 1
                nb += 1
                if nb >= 3 then
                    nb = 0
                    ppos = Vector2(startPos.x, ppos.y + padding.y)

    def draw_needed_merchandise(merchandise: Map[BiomeType, Int], startPos: Vector2[Float], padding: Vector2[Float]) =
        var ppos = Vector2(startPos.x, startPos.y)
        var iter = 0
        var nb = 0
        var totalDrawn = 0
        for (btype, number) <- merchandise do
            iter = number
            while iter >= 1 do
                draw_sprite(
                    sprites("merch"),
                    ppos,
                    true,
                    opacity = 0.3f,
                    color = get_biome_color(btype, true)
                )
                ppos += Vector2(padding.x, 0f)
                iter -= 1
                nb += 1
                totalDrawn += 1
                if nb >= 4 then
                    nb = 0
                    ppos = Vector2(startPos.x, ppos.y + padding.y)

    def draw_city(city: City) =
        val currentSprite = get_city_sprite(city.name)
        draw_sprite(
            currentSprite,
            ui.worldpos_to_screenpos(city.pos),
            true,
            color = get_biome_color(game.get_biome(city.pos, true), true)
        )
        val endpos = draw_passengers(
            city.passengers,
            ui.worldpos_to_screenpos(city.pos) + Vector2(
                currentSprite.globalBounds.width * 0.8f,
                -currentSprite.globalBounds.height / 2f
            ),
            Vector2(sprites("citysquareicon").globalBounds.width, sprites("citysquareicon").globalBounds.height)
        )
        draw_needed_merchandise(
            city.merchNeeded,
            endpos,
            Vector2(sprites("merch").globalBounds.width, sprites("merch").globalBounds.height)
        )

        draw_produced_merchandise(
            city.merchProduced,
            ui.worldpos_to_screenpos(city.pos) - Vector2(
                currentSprite.globalBounds.width * 0.8f,
                currentSprite.globalBounds.height / 2f
            ),
            Vector2(-sprites("merch").globalBounds.width, sprites("merch").globalBounds.height)
        )
        draw_text(
            ui.worldpos_to_screenpos(city.pos) + Vector2(0f, 0.9f * sprites("citycircle").globalBounds.height),
            true,
            "level : " + city.level,
            Color.Black(),
            20
        )

        if city.timeOverload > 0f then
            draw_sprite(
                currentSprite,
                ui.worldpos_to_screenpos(city.pos),
                true,
                color = Color.Red(),
                zoomFactor = (city.timeOverload / game.overloadLimit) + abs(sin(System.currentTimeMillis() * 0.004)).toFloat * 0.1f
            )

    def draw_connexion(fwpos: Vector2[Float], swpos: Vector2[Float], ctype: ConnexionType): Unit =
        var col = Color.Black()
        ctype match
            case ConnexionType.Boat =>
                col = Color.apply(120, 198, 211)
                draw_dotted_trail(ui.worldpos_to_screenpos(fwpos), ui.worldpos_to_screenpos(swpos), col)
            case ConnexionType.Plane =>
                col = Color.apply(128, 128, 128)
                draw_dotted_trail(ui.worldpos_to_screenpos(fwpos), ui.worldpos_to_screenpos(swpos), col)
            case _ =>
                val ortho = normalize(Vector2(-(swpos - fwpos).y, (swpos - fwpos).x))
                val space = 3f
                draw_trail(
                    ui.worldpos_to_screenpos(fwpos) - ortho * space,
                    ui.worldpos_to_screenpos(swpos) - ortho * space,
                    col,
                    size = 4f
                )
                draw_trail(
                    ui.worldpos_to_screenpos(fwpos) + ortho * space,
                    ui.worldpos_to_screenpos(swpos) + ortho * space,
                    col,
                    size = 4f
                )
                draw_dotted_trail(ui.worldpos_to_screenpos(fwpos), ui.worldpos_to_screenpos(swpos), col, space = 10f)

    def draw_connexion(connexion: Connexion): Unit =
        draw_connexion(connexion.city1.pos, connexion.city2.pos, connexion.ctype)

    def get_vehicle_sprite(vehicle: Vehicle) =
        vehicle.vtype match
            case ConnexionType.Boat =>
                if vehicle.broken then sprites("brokenboat") else sprites("boat")
            case ConnexionType.Plane =>
                if vehicle.broken then sprites("brokenplane") else sprites("plane")
            case _ => if vehicle.broken then sprites("brokentrain") else sprites("train")

    def draw_vehicle(vehicle: Vehicle, spos: Option[Vector2[Float]] = None): Unit =
        var col = Color.White()
        vehicle match
            case _: MerchandiseVehicle => col = Color.apply(150, 150, 150)
            case _                     => ()

        if spos != None then
            draw_sprite(
                get_vehicle_sprite(vehicle),
                spos.get,
                color = col,
                rot = angle_of(Vector2(1, 0))
            )
        else
            draw_sprite(
                get_vehicle_sprite(vehicle),
                ui.worldpos_to_screenpos(vehicle.pos()),
                color = col,
                rot = angle_of(vehicle.dir() * vehicle.wayOfTravel.toFloat)
            )
            if vehicle.almostBroken && !vehicle.broken then
                draw_sprite(
                    sprites("broken"),
                    ui.worldpos_to_screenpos(vehicle.pos()) - Vector2(0f, 50f),
                    zoomFactor = 0.5f + abs(sin(System.currentTimeMillis() * 0.003)).toFloat * 0.7f
                )
            if vehicle.broken then
                draw_sprite(
                    sprites("brokenred"),
                    ui.worldpos_to_screenpos(vehicle.pos()) - Vector2(0f, 50f),
                    zoomFactor = 0.5f + abs(sin(System.currentTimeMillis() * 0.003)).toFloat * 0.7f
                )
            vehicle match
                case _: PassengerVehicle =>
                    val _ = draw_passengers(
                        vehicle.asInstanceOf[PassengerVehicle].vehiclePass,
                        ui.worldpos_to_screenpos(vehicle.pos()) + Vector2(60f, -30f),
                        Vector2(sprites("citysquareicon").globalBounds.width, sprites("citysquareicon").globalBounds.height)
                    )
                case _ =>
                    draw_produced_merchandise(
                        vehicle.asInstanceOf[MerchandiseVehicle].vehicleMerch,
                        ui.worldpos_to_screenpos(vehicle.pos()) + Vector2(60f, -30f),
                        Vector2(sprites("citysquareicon").globalBounds.width, sprites("citysquareicon").globalBounds.height)
                    )

    def get_button_draw_info(button: UIButton): (Option[Sprite], ButtonType) =
        button.name match
            case "connexionTrainButton" =>
                if button.selected then (Some(sprites("connexiontrainselected")), ButtonType.Hover)
                else (Some(sprites("connexiontrain")), ButtonType.Hover)
            case "connexionBoatButton" =>
                if button.selected then (Some(sprites("connexionboatselected")), ButtonType.Hover)
                else (Some(sprites("connexionboat")), ButtonType.Hover)
            case "connexionPlaneButton" =>
                if button.selected then (Some(sprites("connexionplaneselected")), ButtonType.Hover)
                else (Some(sprites("connexionplane")), ButtonType.Hover)
            case "passTrainButton"        => (Some(sprites("passtrainbutton")), ButtonType.Hover)
            case "merchTrainButton"       => (Some(sprites("merchtrainbutton")), ButtonType.Hover)
            case "passPlaneButton"        => (Some(sprites("passplanebutton")), ButtonType.Hover)
            case "merchPlaneButton"       => (Some(sprites("merchplanebutton")), ButtonType.Hover)
            case "passBoatButton"         => (Some(sprites("passboatbutton")), ButtonType.Hover)
            case "merchBoatButton"        => (Some(sprites("merchboatbutton")), ButtonType.Hover)
            case "passTrainsOwnedButton"  => (Some(sprites("passtrainsowned")), ButtonType.Fixed)
            case "merchTrainsOwnedButton" => (Some(sprites("merchtrainsowned")), ButtonType.Fixed)
            case "passPlanesOwnedButton"  => (Some(sprites("passplanesowned")), ButtonType.Fixed)
            case "merchPlanesOwnedButton" => (Some(sprites("merchplanesowned")), ButtonType.Fixed)
            case "passBoatsOwnedButton"   => (Some(sprites("passboatsowned")), ButtonType.Fixed)
            case "merchBoatsOwnedButton"  => (Some(sprites("merchboatsowned")), ButtonType.Fixed)
            case "closeButton"            => (Some(sprites("closebutton")), ButtonType.Hover)
            case "upgradeButton"          => (Some(sprites("upgradebutton")), ButtonType.Hover)
            case "maintenanceButton"      => (Some(sprites("maintenancebutton")), ButtonType.Hover)
            case "coinButton"             => (Some(sprites("coin")), ButtonType.Fixed)
            case "yesButton"              => (Some(sprites("yesbutton")), ButtonType.Hover)
            case "noButton"               => (Some(sprites("nobutton")), ButtonType.Hover)
            case _                        => (None, ButtonType.Fixed)

    def draw_button(button: UIButton) =
        val (buttonSpr, btype) = get_button_draw_info(button)
        if buttonSpr.isDefined then
            btype match
                case ButtonType.Hover =>
                    draw_sprite(
                        buttonSpr.get,
                        ui.uvpos_to_screenpos(button.real_uv_pos()),
                        true,
                        (if button.is_hovered then 1.3f else 1f)
                    )
                case _ =>
                    draw_sprite(
                        buttonSpr.get,
                        ui.uvpos_to_screenpos(button.real_uv_pos()),
                        true,
                        1f
                    )
        else
            draw_circle(
                ui.uvpos_to_screenpos(button.real_uv_pos()),
                window.size.y * button.uvsize * (if button.is_hovered then 1.3f else 1f),
                button.color,
                0
            )

    def draw_panel(panel: UIPanel) =
        draw_rectangle(ui.uvpos_to_screenpos(panel.uvpos), ui.uvpos_to_screenpos(panel.uvsize), Color.apply(255, 255, 255, 150), 7f)
        for e <- panel.elements do
            e match
                case button: UIButton => draw_button(button)
                case text: UIText =>
                    draw_text(
                        ui.uvpos_to_screenpos(panel.uvpos) + Vector2(
                            text.uvpos.x * ui.uvpos_to_screenpos(panel.uvsize).x,
                            text.uvpos.y * ui.uvpos_to_screenpos(panel.uvsize).y
                        ),
                        true,
                        text.content,
                        text.color,
                        2 * text.fontSize
                    )
                case _ => ()

    def draw_warning(warning: UIWarning) =
        draw_rectangle(
            ui.uvpos_to_screenpos(warning.uvpos),
            ui.uvpos_to_screenpos(warning.uvsize),
            Color.apply(255, 255, 255, 75),
            7f
        )
        for text <- warning.texts do draw_text(ui.uvpos_to_screenpos(text.uvpos), true, text.content, text.color, 2 * text.fontSize)
        var sprite = sprites("earthquake")
        warning.disaster.get.dtype match
            case DisasterType.Sandstorm => sprite = sprites("sandstorm")
            case DisasterType.OilSpill  => sprite = sprites("oilSpill")
            case _                      => ()
        draw_sprite(
            sprite,
            ui.uvpos_to_screenpos(warning.uvpos + Vector2(warning.uvsize.x / 2f, warning.uvsize.y / 3f - 0.03f)),
            true
        )

    def draw_confirm(confirm: UIConfirm) =
        draw_rectangle(
            ui.uvpos_to_screenpos(confirm.uvpos),
            ui.uvpos_to_screenpos(confirm.uvsize),
            Color.apply(255, 255, 255, 150),
            7f
        )
        for e <- confirm.elements do
            e match
                case button: UIButton => draw_button(button)
                case text: UIText =>
                    draw_text(
                        ui.uvpos_to_screenpos(confirm.uvpos) + Vector2(
                            text.uvpos.x * ui.uvpos_to_screenpos(confirm.uvsize).x,
                            text.uvpos.y * ui.uvpos_to_screenpos(confirm.uvsize).y
                        ),
                        true,
                        text.content,
                        text.color,
                        2 * text.fontSize
                    )
                case _ => ()

    def get_biome_color(btype: BiomeType, lighterVersion: Boolean = false) =
        val col = (btype match
            case BiomeType.Plain   => Color.apply(58, 186, 88)
            case BiomeType.Ocean   => Color.apply(38, 40, 163)
            case BiomeType.Montain => Color.apply(103, 104, 105)
            case _ => if game.world.sandstorm.isOngoing then Color.apply(201, 161, 87) else Color.apply(201, 198, 87)
        )
        if lighterVersion then Color.apply(col.r + 50, col.g + 50, col.b + 50)
        else col

    def draw_env(wpos: Vector2[Float]) =
        val spos = ui.worldpos_to_screenpos(wpos)
        game.get_biome(wpos, true) match
            case BiomeType.Plain   => draw_sprite(sprites("env_plain"), spos, true)
            case BiomeType.Ocean   => draw_sprite(sprites("env_ocean"), spos, true)
            case BiomeType.Montain => draw_sprite(sprites("env_montain"), spos, true)
            case _                 => draw_sprite(sprites("env_desert"), spos, true)

    def get_grid_pos(v: Vector2[Float]) =
        Vector2(
            floor(v.x / game.biomeCellSize).toFloat * game.biomeCellSize,
            floor(v.y / game.biomeCellSize).toFloat * game.biomeCellSize
        )

    def col_to_vec3(c: Color) =
        val r = if c.r < 0 then 255 + c.r else c.r
        val g = if c.g < 0 then 255 + c.g else c.g
        val b = if c.b < 0 then 255 + c.b else c.b
        Vector3(r.toFloat / 255f, g.toFloat / 255f, b.toFloat / 255f)

    def draw_biomes() =
        var pos = get_grid_pos(ui.screenpos_to_worldpos(Vector2(0, 0)))
        var screenPos = ui.worldpos_to_screenpos(pos)
        val startPosY = pos.y
        while screenPos.x < window.size.x + ui.worldsize_to_screensize(game.biomeCellSize) do
            while screenPos.y < window.size.y + ui.worldsize_to_screensize(game.biomeCellSize) do

                val TLPos = pos
                val TRPos = pos + Vector2(game.biomeCellSize, 0f)
                val BLPos = pos + Vector2(0f, game.biomeCellSize)
                val BRPos = pos + Vector2(game.biomeCellSize, game.biomeCellSize)

                val biomeTL = game.get_biome(TLPos)
                val biomeTR = game.get_biome(TRPos)
                val biomeBL = game.get_biome(BLPos)
                val biomeBR = game.get_biome(BRPos)

                val v: Vector2[Float] = Vector2(game.biomeCellSize, game.biomeCellSize)
                val v2: Vector2[Float] = window.size
                val shape = RectangleShape(v)
                shape.position = screenPos

                biomeShader.uniform_=("u_resolution", v)
                biomeShader.uniform_=("u_globalResolution", v2)
                biomeShader.uniform_=("u_pos", screenPos)

                biomeShader.uniform_=("u_tlCol", col_to_vec3(get_biome_color(biomeTL)))
                biomeShader.uniform_=("u_trCol", col_to_vec3(get_biome_color(biomeTR)))
                biomeShader.uniform_=("u_blCol", col_to_vec3(get_biome_color(biomeBL)))
                biomeShader.uniform_=("u_brCol", col_to_vec3(get_biome_color(biomeBR)))

                renderTex.draw(shape, RenderStates(Option(biomeShader)))

                pos = Vector2(pos.x, pos.y + game.biomeCellSize)
                screenPos = ui.worldpos_to_screenpos(pos)
            pos = Vector2(pos.x + game.biomeCellSize, startPosY)
            screenPos = ui.worldpos_to_screenpos(pos)

    def draw_monster(monster: Monster) =
        draw_sprite(
            sprites("monster"),
            ui.worldpos_to_screenpos(monster.pos),
            true,
            rot = angle_of(monster.targetPos - monster.pos)
        )

    def draw_tata(tata: TataDoritosLuc) =
        if tata.facingRight == 1 then draw_sprite(sprites("tatadoritoslucright"), ui.uvpos_to_screenpos(tata.uvpos), true)
        else draw_sprite(sprites("tatadoritoslucleft"), ui.uvpos_to_screenpos(tata.uvpos), true)

    def bool_to_float(b: Boolean) =
        if b then 1f else 0f

    def draw() =
        window.clear(Color.White())

        if renderTexSize != window.size then
            renderTexSize = window.size
            var _ = renderTex.create(renderTexSize.x, renderTexSize.y)

        draw_biomes()

        for connexion <- game.world.connexions do draw_connexion(connexion)
        for city <- game.world.cities do draw_city(city)
        for vehicle <- game.world.passenger_vehicles do draw_vehicle(vehicle)
        for vehicle <- game.world.merchandise_vehicles do draw_vehicle(vehicle)
        for monster <- game.world.monsters do draw_monster(monster)
        for tata <- game.world.tataluc do draw_tata(tata)

        for element <- ui.elements do
            if element.isActive then
                element match
                    case button: UIButton => draw_button(button)
                    case text: UIText =>
                        draw_text(ui.uvpos_to_screenpos(text.uvpos), text.centered, text.content, text.color, 2 * text.fontSize)
                    case panel: UIPanel     => draw_panel(panel)
                    case warning: UIWarning => draw_warning(warning)
                    case confirm: UIConfirm => draw_confirm(confirm)

        if ui.vehicleHeld != None then draw_vehicle(ui.vehicleHeld.get, Some(ui.screenMousePos))

        if ui.creatingConnexion then draw_connexion(ui.lastClosestCity.get.pos, ui.worldMousePos, ui.selectedConnexionType)

        renderTex.display()
        val sprite = Sprite()
        sprite.texture = renderTex.texture

        val v: Vector2[Float] = renderTexSize
        postProcessShader.uniform_=("u_resolution", v)
        postProcessShader.uniform_=("u_plainCol", col_to_vec3(get_biome_color(BiomeType.Plain)))
        postProcessShader.uniform_=("u_desertCol", col_to_vec3(get_biome_color(BiomeType.Desert)))
        postProcessShader.uniform_=("u_oceanCol", col_to_vec3(get_biome_color(BiomeType.Ocean)))
        postProcessShader.uniform_=(
            "u_Disaster",
            Vector3(
                bool_to_float(game.world.earthquake.isOngoing),
                bool_to_float(game.world.sandstorm.isOngoing),
                bool_to_float(game.world.oilSpill.isOngoing)
            )
        )
        postProcessShader.uniform_=("u_time", Vector2(game.timer, 0f))
        window.draw(sprite, RenderStates(Option(postProcessShader)))
        window.display()
