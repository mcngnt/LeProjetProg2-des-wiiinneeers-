package disaster

import sfml.system.Vector2

import audiomanager.*
import game.*
import ui.*
import utils.*
import vehicle.*

enum DisasterType:
    case Sandstorm
    case Earthquake
    case OilSpill

class Disaster(val dtype: DisasterType, var pos: Option[Vector2[Float]] = None):

    var isOngoing = false
    var timeSinceDisaster = 0f
    var disasterDuration = 0f
    var isPossible = false
    var warned = false
    var timeSinceWarning = 0f

    def is_affected(pos: Vector2[Float]) =
        val biome = game.get_biome(pos)
        dtype match
            case DisasterType.Sandstorm  => biome == BiomeType.Desert
            case DisasterType.Earthquake => biome == BiomeType.Plain
            case _                       => biome == BiomeType.Ocean

    def warn() =
        warned = true
        timeSinceWarning = 0f
        ui.warning.disaster = Some(this)
        ui.warning.activate()

    def trigger_disaster() =
        isOngoing = true
        dtype match
            case DisasterType.Sandstorm  => audioManager.play_sound("sandstorm")
            case DisasterType.Earthquake => audioManager.play_sound("earthquake")
            case _                       => audioManager.play_sound("oilSpill")
        // var posFound = false
        // val size = game.world.cities.size
        // while !posFound do
        //     val centerCity = game.world.cities(Random.between(0, size))
        //     if !(dtype == DisasterType.Sandstorm && game.get_biome(centerCity.pos) != Biomdtype.Desert) && !(dtype == DisasterType.OilSpill && game.get_biome(centerCity.pos) != Biomdtype.Ocean) then
        //         posFound = true
        //         pos = Some(centerCity.pos)

    def update(dt: Float) =
        if isPossible then timeSinceDisaster += dt
        if isOngoing then disasterDuration += dt
        if warned then timeSinceWarning += dt
        if disasterDuration > 20f then
            isOngoing = false
            disasterDuration = 0f
            timeSinceDisaster = 0f
        if !isOngoing && !warned && timeSinceDisaster >= 48f && game.rand.nextFloat() >= 0.9999 then warn()
        if !isOngoing && !warned && timeSinceDisaster >= 103f then warn()
        if !isOngoing && warned && timeSinceWarning >= 5f then
            warned = false
            trigger_disaster()
