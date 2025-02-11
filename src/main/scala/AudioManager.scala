package audiomanager

import scala.collection.mutable.Map

import sfml.audio.{Sound, SoundBuffer}

import renderer.*

val audioManager = AudioManager()

class AudioManager():

    val soundsBuffer = Map[String, SoundBuffer]()
    val sounds = Map[String, Sound]()

    def create_sound(name: String) =
        soundsBuffer(name) = SoundBuffer()
        if !(soundsBuffer(name).loadFromFile(RESOURCES_DIR + "sounds/" + name + ".wav")) then System.exit(1)
        sounds(name) = Sound()
        sounds(name).buffer = soundsBuffer(name)

    create_sound("broken")
    create_sound("dropVehicule")
    create_sound("line")
    create_sound("panel")
    create_sound("spawn")
    create_sound("stationWarning")
    create_sound("money")
    create_sound("monsters")
    create_sound("clickMonster")
    create_sound("vehicleAttacked")
    create_sound("boatAttacked")
    create_sound("sandstorm")
    create_sound("earthquake")
    create_sound("oilSpill")
    create_sound("levelUp")
    create_sound("warning")
    create_sound("wait")

    sounds("line").volume = 75f
    sounds("panel").volume = 75f
    sounds("money").volume = 75f
    sounds("monsters").volume = 75f
    sounds("clickMonster").volume = 75f
    sounds("sandstorm").volume = 75f
    sounds("oilSpill").volume = 50f
    sounds("vehicleAttacked").volume = 50f
    sounds("wait").volume = 25f

    def play_sound(name: String) =
        sounds(name).play()
