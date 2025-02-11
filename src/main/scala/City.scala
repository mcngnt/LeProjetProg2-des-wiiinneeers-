package city

import scala.collection.mutable.ArrayBuffer
import scala.collection.mutable.Map
import scala.math.min
import scala.util.Random

import sfml.system.Vector2

import audiomanager.*
import game.*
import ui.*
import utils.*

class City(var name: String, var pos: Vector2[Float], var population: Int):
    var id = 0
    val passengers = Map[String, Int]()
    var targets = ArrayBuffer[String]()
    val merchNeeded = Map[BiomeType, Int]()
    val merchProduced = Map[BiomeType, Int]()
    var level = 1
    var xp = 0
    var timeOverload = 0f
    var timeBeforeNewPassenger = 0f
    var timeBeforeNewMerch = 0f
    var notNoticed = true

    for name <- cityNames do passengers(name) = 0
    for b <- biomes do
        merchNeeded(b) = 0
        merchProduced(b) = 0

    def gainXP(nb: Int) =
        xp += nb
        if nb != 0 then ui.create_xp_text(pos, nb)

    def update(dt: Float) =
        timeBeforeNewPassenger += dt
        timeBeforeNewMerch += dt

        if timeBeforeNewPassenger > (2f + 450f / population.toFloat) then
            val target = Random.shuffle(targets.toList).head
            passengers(target) += 1
            timeBeforeNewPassenger = 0f
            /*adds a new passenger waiting to go a "target" type city*/

        if timeBeforeNewMerch > (4f + 450f / (population.toFloat * level.toFloat)) then
            val targetMerch = Random.shuffle(biomes).head
            if !(merchNeeded contains targetMerch) then merchNeeded(targetMerch) = 0
            merchNeeded(targetMerch) = min(merchNeeded(targetMerch) + 1, 12)
            merchProduced(game.get_biome(this.pos, true)) = min(merchProduced(game.get_biome(this.pos, true)) + 1, 12)
            timeBeforeNewMerch = 0f
            /*produces merch and adds a new need in other merch*/

        if xp >= 500 then
            level += 1
            xp = 0
            audioManager.play_sound("levelUp")

        var totalPassengers = 0
        for (_, nb) <- passengers do totalPassengers += nb
        if totalPassengers > 8 then
            if timeOverload == 0f then audioManager.play_sound("stationWarning")
            timeOverload += dt
            /*if too many people are waiting, player gets warning before losing game*/
        else timeOverload = 0f
