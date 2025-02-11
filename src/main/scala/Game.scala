package game

import java.io._

import scala.collection.mutable.ArrayBuffer
import scala.collection.mutable.Map
import scala.io.Source
import scala.math.{Pi, max}
import scala.util.Random
import scala.util.Try

import sfml.system.{Vector2, Vector3}

import audiomanager.*
import city.*
import company.Company
import connexion.*
import disaster.*
import monster.*
import renderer.*
import ui.*
import utils.*
import vehicle.*
import world.World
import tata.*

enum BiomeType:
    case Plain
    case Ocean
    case Montain
    case Desert

enum ParserMainMode:
    case General
    case City
    case Connexion
    case PassengerVehicle
    case MerchandiseVehicle

enum ParserSubMode:
    case Money
    case Timer
    case TimeSpawnCity
    case Seed
    case MapHeight
    case MapTemperature
    case Monsters
    case ID
    case Type
    case Pos
    case Targets
    case Population
    case Passengers
    case Merchandise
    case MerchandiseNeeded
    case CityID1
    case CityID2
    case Power
    case Size
    case ConnexionID
    case Percentage
    case Level

val game = Game()

val biomes = List(BiomeType.Plain, BiomeType.Ocean, BiomeType.Montain, BiomeType.Desert)

class Game:
    var seed: Long = System.currentTimeMillis()

    var rand = Random(seed)

    var comp: Company = Company()
    var world: World = new World()

    var isLost = false
    var isPause = false

    val popRangeInf = 50
    val popRangeSup = 100

    val posRangeInf = -500
    val posRangeSup = 500

    val overloadLimit = 15f

    var timer = 0f
    var timeSinceStation = 0f

    val possibleNames = List("Square", "Circle", "Triangle")

    var noiseHeight = PerlinNoise(seed)
    var noiseTemperature = PerlinNoise(seed + 1)

    val biomeCellSize = 50f

    var cityDistGen = 300f
    var minDistBetweenCities = 200f
    var citySpawnTime = 25f

    var timeSinceMonsterAttack = 0f
    var tata = -1
    var durationOfTataDoritosLuc = 0f

    def ctype_to_string(ctype: ConnexionType): String =
        ctype match
            case ConnexionType.Train => "Train"
            case ConnexionType.Boat  => "Boat"
            case ConnexionType.Plane => "Plane"

    def btype_to_string(btype: BiomeType): String =
        btype match
            case BiomeType.Plain   => "Plain"
            case BiomeType.Desert  => "Desert"
            case BiomeType.Ocean   => "Ocean"
            case BiomeType.Montain => "Montain"

    def string_to_ctype(s: String): Option[ConnexionType] =
        s match
            case "Train" => Some(ConnexionType.Train)
            case "Boat"  => Some(ConnexionType.Boat)
            case "Plane" => Some(ConnexionType.Plane)
            case _       => None

    def string_to_btype(s: String): Option[BiomeType] =
        s match
            case "Plain"   => Some(BiomeType.Plain)
            case "Desert"  => Some(BiomeType.Desert)
            case "Ocean"   => Some(BiomeType.Ocean)
            case "Montain" => Some(BiomeType.Montain)
            case _         => None

    def save() =
        val filename = RESOURCES_DIR + "save.vct"
        val writer = new PrintWriter(new File(filename))
        writer.write(s"money\n${comp.money}\n")
        writer.write(s"timer\n${timer}\n")
        writer.write(s"timeSpawnCity\n${timeSinceStation}\n")
        writer.write(s"seed\n${seed}\n")
        writer.write(s"mapHeight\n")
        for ((x, y), v) <- noiseHeight.grid do writer.write(s"${x},${y},${v}\n")
        writer.write(s"mapTemperature\n")
        for ((x, y), v) <- noiseTemperature.grid do writer.write(s"${x},${y},${v}\n")
        writer.write(s"monsters\n")
        for m <- world.monsters do writer.write(s"${m.pos.x},${m.pos.y}\n")
        for city <- world.cities do
            writer.write(s"city\n")
            writer.write(s"id\n${city.id}\n")
            writer.write(s"pos\n${city.pos.x},${city.pos.y}\n")
            writer.write(s"type\n${city.name}\n")
            writer.write(s"pop\n${city.population}\n")
            writer.write(s"level\n${city.level}\n")
            writer.write(s"targets\n")
            for t <- city.targets do writer.write(s"${t}\n")
            writer.write(s"passengers\n")
            for n <- possibleNames do for i <- 1 to city.passengers(n) do writer.write(s"${n}\n")
            writer.write(s"merchandise\n")
            for b <- BiomeType.values do for i <- 1 to city.merchProduced(b) do writer.write(s"${btype_to_string(b)}\n")
            writer.write(s"merchandiseNeeded\n")
            for b <- BiomeType.values do for i <- 1 to city.merchNeeded(b) do writer.write(s"${btype_to_string(b)}\n")
        for connexion <- world.connexions do
            writer.write(s"connexion\n")
            writer.write(s"id\n${connexion.id}\n")
            writer.write(s"cityID1\n${connexion.city1.id}\n")
            writer.write(s"cityID2\n${connexion.city2.id}\n")
            writer.write(s"type\n${ctype_to_string(connexion.ctype)}\n")
        for vehicle <- world.passenger_vehicles do
            writer.write(s"passengerVehicle\n")
            writer.write(s"power\n${vehicle.power}\n")
            writer.write(s"size\n${vehicle.size}\n")
            writer.write(s"type\n${ctype_to_string(vehicle.vtype)}\n")
            writer.write(s"connexionID\n${vehicle.currentConnexion.get.id}\n")
            writer.write(s"percentage\n${vehicle.percentage}\n")
            writer.write(s"passengers\n")
            for n <- possibleNames do for i <- 1 to vehicle.vehiclePass(n) do writer.write(s"${n}\n")
            writer.write(s"timer\n${vehicle.hp}\n")
        for vehicle <- world.merchandise_vehicles do
            writer.write(s"merchandiseVehicle\n")
            writer.write(s"power\n${vehicle.power}\n")
            writer.write(s"size\n${vehicle.size}\n")
            writer.write(s"type\n${ctype_to_string(vehicle.vtype)}\n")
            writer.write(s"connexionID\n${vehicle.currentConnexion.get.id}\n")
            writer.write(s"percentage\n${vehicle.percentage}\n")
            writer.write(s"passengers\n")
            writer.write(s"merchandise\n")
            for b <- BiomeType.values do for i <- 1 to vehicle.vehicleMerch(b) do writer.write(s"${btype_to_string(b)}\n")
        writer.close()
        ui.send_saved_test()

    def load_save() =
        val filename = RESOURCES_DIR + "save.vct"
        val source = Source.fromFile(filename)
        val lines =
            try source.getLines().toList
            finally source.close()

        var currentMainMode = ParserMainMode.General
        var currentSubMode = ParserSubMode.Money
        var currentCity: Option[City] = None
        var currentConnexion: Option[Connexion] = None
        var currentVehicle: Option[Vehicle] = None

        var maxCityID = 0
        var maxConnexionID = 0

        val heightGrid = Map[(Int, Int), Float]()
        val temperatureGrid = Map[(Int, Int), Float]()

        world.cities = ArrayBuffer[City]()
        world.connexions = ArrayBuffer[Connexion]()
        world.passenger_vehicles = ArrayBuffer[PassengerVehicle]()
        world.merchandise_vehicles = ArrayBuffer[MerchandiseVehicle]()
        world.monsters = ArrayBuffer[Monster]()

        def push_data() =
            if currentCity.isDefined then world.cities += currentCity.get
            if currentConnexion.isDefined then world.connexions += currentConnexion.get
            if currentVehicle.isDefined then
                if currentMainMode == ParserMainMode.PassengerVehicle then
                    world.passenger_vehicles += currentVehicle.get.asInstanceOf[PassengerVehicle]
                else world.merchandise_vehicles += currentVehicle.get.asInstanceOf[MerchandiseVehicle]
            currentCity = None
            currentConnexion = None

        def handle_data(line: String) =
            val lineInt: Option[Int] = Try(line.toInt).toOption
            val lineFloat: Option[Float] = Try(line.toFloat).toOption
            val lineLong: Option[Long] = Try(line.toLong).toOption
            val lineVector2Float: Option[Vector2[Float]] = string_to_vector2(line)
            val lineVector3Float: Option[Vector3[Float]] = string_to_vector3(line)
            try
                currentSubMode match
                    case ParserSubMode.Money => comp.money = lineInt.get
                    case ParserSubMode.Timer =>
                        currentMainMode match
                            case ParserMainMode.General => timer = lineFloat.get
                            case _                      => currentVehicle.get.hp = lineFloat.get
                    case ParserSubMode.TimeSpawnCity => timeSinceStation = lineFloat.get
                    case ParserSubMode.Seed          => seed = lineLong.get
                    case ParserSubMode.MapHeight =>
                        heightGrid((lineVector3Float.get.x.toInt, lineVector3Float.get.y.toInt)) = lineVector3Float.get.z
                    case ParserSubMode.MapTemperature =>
                        temperatureGrid((lineVector3Float.get.x.toInt, lineVector3Float.get.y.toInt)) = lineVector3Float.get.z
                    case ParserSubMode.Monsters =>
                        world.monsters += Monster(Vector2(lineVector2Float.get.x, lineVector2Float.get.y))
                    case ParserSubMode.ID =>
                        currentMainMode match
                            case ParserMainMode.City =>
                                currentCity.get.id = lineInt.get
                                maxCityID = max(maxCityID, lineInt.get)
                            case ParserMainMode.Connexion =>
                                currentConnexion.get.id = lineInt.get
                                maxConnexionID = max(maxConnexionID, lineInt.get)
                            case _ => throw new RuntimeException("Wrong main mode.")
                    case ParserSubMode.Pos =>
                        currentMainMode match
                            case ParserMainMode.City => currentCity.get.pos = lineVector2Float.get
                            case _                   => throw new RuntimeException("Wrong main mode.")
                    case ParserSubMode.Type =>
                        currentMainMode match
                            case ParserMainMode.City      => currentCity.get.name = line
                            case ParserMainMode.Connexion => currentConnexion.get.ctype = string_to_ctype(line).get
                            case _                        => currentVehicle.get.vtype = string_to_ctype(line).get
                    case ParserSubMode.Population => currentCity.get.population = lineInt.get
                    case ParserSubMode.Level      => currentCity.get.level = lineInt.get
                    case ParserSubMode.Targets    => currentCity.get.targets += line
                    case ParserSubMode.Passengers =>
                        currentMainMode match
                            case ParserMainMode.City => currentCity.get.passengers(line) += 1
                            case ParserMainMode.PassengerVehicle =>
                                currentVehicle.get.asInstanceOf[PassengerVehicle].vehiclePass(line) += 1
                            case _ => throw new RuntimeException("Wrong main mode.")
                    case ParserSubMode.Merchandise =>
                        currentMainMode match
                            case ParserMainMode.City => currentCity.get.merchProduced(string_to_btype(line).get) += 1
                            case ParserMainMode.MerchandiseVehicle =>
                                currentVehicle.get.asInstanceOf[MerchandiseVehicle].vehicleMerch(string_to_btype(line).get) += 1
                            case _ => throw new RuntimeException("Wrong main mode.")
                    case ParserSubMode.MerchandiseNeeded => currentCity.get.merchNeeded(string_to_btype(line).get) += 1
                    case ParserSubMode.CityID1           => currentConnexion.get.city1 = world.find_city_by_id(lineInt.get).get
                    case ParserSubMode.CityID2           => currentConnexion.get.city2 = world.find_city_by_id(lineInt.get).get
                    case ParserSubMode.ConnexionID => currentVehicle.get.currentConnexion = world.find_connexion_by_id(lineInt.get)
                    case ParserSubMode.Power       => currentVehicle.get.power = lineInt.get
                    case ParserSubMode.Size        => currentVehicle.get.size = lineInt.get
                    case ParserSubMode.Percentage  => currentVehicle.get.percentage = lineFloat.get
            catch
                case _: Throwable =>
                    println(s"Failed parsing : $line")

        for line <- lines do
            line match
                case "money"             => currentSubMode = ParserSubMode.Money
                case "timer"             => currentSubMode = ParserSubMode.Timer
                case "timeSpawnCity"     => currentSubMode = ParserSubMode.TimeSpawnCity
                case "seed"              => currentSubMode = ParserSubMode.Seed
                case "mapHeight"         => currentSubMode = ParserSubMode.MapHeight
                case "mapTemperature"    => currentSubMode = ParserSubMode.MapTemperature
                case "monsters"          => currentSubMode = ParserSubMode.Monsters
                case "id"                => currentSubMode = ParserSubMode.ID
                case "type"              => currentSubMode = ParserSubMode.Type
                case "pos"               => currentSubMode = ParserSubMode.Pos
                case "targets"           => currentSubMode = ParserSubMode.Targets
                case "pop"               => currentSubMode = ParserSubMode.Population
                case "passengers"        => currentSubMode = ParserSubMode.Passengers
                case "merchandise"       => currentSubMode = ParserSubMode.Merchandise
                case "merchandiseNeeded" => currentSubMode = ParserSubMode.MerchandiseNeeded
                case "cityID1"           => currentSubMode = ParserSubMode.CityID1
                case "cityID2"           => currentSubMode = ParserSubMode.CityID2
                case "power"             => currentSubMode = ParserSubMode.Power
                case "size"              => currentSubMode = ParserSubMode.Size
                case "connexionID"       => currentSubMode = ParserSubMode.ConnexionID
                case "percentage"        => currentSubMode = ParserSubMode.Percentage
                case "level"             => currentSubMode = ParserSubMode.Level
                case "city" =>
                    push_data()
                    currentCity = Some(City("Circle", Vector2(0, 0), 100))
                    currentMainMode = ParserMainMode.City
                case "connexion" =>
                    push_data()
                    currentConnexion = Some(Connexion(world.find_city_by_id(0).get, world.find_city_by_id(0).get))
                    currentMainMode = ParserMainMode.Connexion
                case "passengerVehicle" =>
                    push_data()
                    currentVehicle = Some(PassengerVehicle(0, 0, ConnexionType.Train))
                    currentMainMode = ParserMainMode.PassengerVehicle
                case "merchandiseVehicle" =>
                    push_data()
                    currentVehicle = Some(MerchandiseVehicle(0, 0, ConnexionType.Train))
                    currentMainMode = ParserMainMode.MerchandiseVehicle
                case _ => handle_data(line)

        world.cityIDCount = maxCityID + 1
        world.connexionIDCount = maxConnexionID + 1
        push_data()
        rand = Random(seed)
        noiseHeight = PerlinNoise(seed)
        noiseHeight.grid = heightGrid
        noiseTemperature = PerlinNoise(seed + 1)
        noiseTemperature.grid = temperatureGrid
        game.isLost = false

    def get_biome_type(h: Float, t: Float) =
        /*determine biome type based on height and temperature of the noise*/
        var btype = BiomeType.Plain
        if t > 0.5 && h < 0.5 then btype = BiomeType.Desert
        if h > 0.6 then btype = BiomeType.Montain
        if h < 0.4 then btype = BiomeType.Ocean
        btype

    def get_biome(wpos: Vector2[Float], useOffset: Boolean = false) =
        var offset = Vector2(0f, 0f)
        if useOffset then offset = Vector2(biomeCellSize * 0.29f, biomeCellSize * 0.66f)
        get_biome_type(noiseHeight.sample(wpos + offset), noiseTemperature.sample(wpos + offset))

    def trigger_monster_attack(): Unit =
        audioManager.play_sound("monsters")
        timeSinceMonsterAttack = 0f
        world.ongoingMonsterAttack = true
        val angle = rand.nextFloat * 2f * Pi.toFloat
        val magn = (1f - rand.nextFloat * rand.nextFloat) * cityDistGen * 1.5f
        val pos = vec_from_angle(angle, magn)
        world.monsters += Monster(pos)
        world.monsters += Monster(pos + Vector2(-100f, -50f))
        world.monsters += Monster(pos + Vector2(-50f, +50f))
        world.monsters += Monster(pos + Vector2(-25f, +25f))
        world.monsters += Monster(pos + Vector2(-75f, 0f))
        world.monsters += Monster(pos + Vector2(-50f, -25f))

    def tataDoritosLuc(): Unit =
        tata = 0
        durationOfTataDoritosLuc = 0f
        audioManager.play_sound("wait")
        world.tataluc += TataDoritosLuc(Vector2(0.05f, 0f), 1)
        world.tataluc += TataDoritosLuc(Vector2(0.25f, 0f), -1)
        world.tataluc += TataDoritosLuc(Vector2(0.45f, 0f), 1)
        world.tataluc += TataDoritosLuc(Vector2(0.65f, 0f), -1)
        world.tataluc += TataDoritosLuc(Vector2(0.85f, 0f), 1)

    def init(): Unit =

        seed = System.currentTimeMillis()
        rand = Random(seed)
        noiseHeight = PerlinNoise(seed)
        noiseTemperature = PerlinNoise(seed + 1)

        isLost = false
        isPause = false
        timer = 0f
        timeSinceStation = 0f
        cityDistGen = 300f

        world = new World()
        comp = new Company()

        val city1 = world.create_city("Square", Vector2(200, 100), 35)
        val city2 = world.create_city("Circle", Vector2(-200, 100), 40)
        val city3 = world.create_city("Triangle", Vector2(0, -100), 30)

        city1.targets += "Circle"
        city2.targets += "Triangle"
        city3.targets += "Square"

    def update(dt: Float) =
        if !(isLost || isPause) then
            world.update(dt)
            for city <- world.cities do if city.timeOverload > overloadLimit then isLost = true
            timer += dt
            timeSinceStation += dt
            timeSinceMonsterAttack += dt
            // Create a new city at a fixed time rate
            if timeSinceStation > citySpawnTime then
                // The city is created in a growing disk, with a higher probability to be on the rim
                // The city is prevented to be too close to another city (difficult to see what's happening otherwise)
                var angle = rand.nextFloat * 2f * Pi.toFloat
                var magn = (1f - rand.nextFloat * rand.nextFloat) * cityDistGen
                while dist(
                        world.closest_city(vec_from_angle(angle, magn)).get.pos,
                        vec_from_angle(angle, magn)
                    ) < minDistBetweenCities
                do
                    angle = rand.nextFloat * 2f * Pi.toFloat
                    magn = (1f - rand.nextFloat * rand.nextFloat) * cityDistGen
                val c = world.create_city(
                    Random.shuffle(cityNames).head,
                    vec_from_angle(angle, magn),
                    rand.between(popRangeInf, popRangeSup) + timer.toInt
                )
                audioManager.play_sound("spawn")
                var target = Random.shuffle(cityNames).head
                while target == c.name do target = Random.shuffle(cityNames).head
                if rand.nextFloat > 0.7 then
                    var newTarget = Random.shuffle(cityNames).head
                    while newTarget == c.name || newTarget == target do newTarget = Random.shuffle(cityNames).head
                c.targets += target
                cityDistGen += 35
                timeSinceStation = 0f
            if timeSinceMonsterAttack >= 20f && game.rand.nextFloat() >= 0.9995 then trigger_monster_attack()
            if timeSinceMonsterAttack >= 35f then trigger_monster_attack()
        if tata >= 0 then durationOfTataDoritosLuc += dt
        if durationOfTataDoritosLuc >= 1f && tata == 2 then
            tata = -1
            durationOfTataDoritosLuc = 0f
            world.tataluc += TataDoritosLuc(Vector2(0.15f, 0f), 1)
            world.tataluc += TataDoritosLuc(Vector2(0.35f, 0f), -1)
            world.tataluc += TataDoritosLuc(Vector2(0.45f, 0f), 1)
            world.tataluc += TataDoritosLuc(Vector2(0.75f, 0f), -1)
            world.tataluc += TataDoritosLuc(Vector2(0.95f, 0f), 1)
        else if durationOfTataDoritosLuc >= 1f && tata == 1 then
            tata += 1
            durationOfTataDoritosLuc = 0f
            world.tataluc += TataDoritosLuc(Vector2(0.05f, 0f), 1)
            world.tataluc += TataDoritosLuc(Vector2(0.25f, 0f), -1)
            world.tataluc += TataDoritosLuc(Vector2(0.45f, 0f), 1)
            world.tataluc += TataDoritosLuc(Vector2(0.65f, 0f), -1)
            world.tataluc += TataDoritosLuc(Vector2(0.85f, 0f), 1)
        else if durationOfTataDoritosLuc >= 1f && tata == 0 then
            tata += 1
            durationOfTataDoritosLuc = 0f
            world.tataluc += TataDoritosLuc(Vector2(0.15f, 0f), 1)
            world.tataluc += TataDoritosLuc(Vector2(0.35f, 0f), -1)
            world.tataluc += TataDoritosLuc(Vector2(0.45f, 0f), 1)
            world.tataluc += TataDoritosLuc(Vector2(0.75f, 0f), -1)
            world.tataluc += TataDoritosLuc(Vector2(0.95f, 0f), 1)
