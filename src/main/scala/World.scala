package world

import scala.collection.mutable.ArrayBuffer

import sfml.system.Vector2

import city.City
import connexion.*
import disaster.*
import game.*
import monster.*
import utils.*
import vehicle.*
import tata.*

class World:

    var cities = ArrayBuffer[City]()
    var connexions = ArrayBuffer[Connexion]()
    var passenger_vehicles = ArrayBuffer[PassengerVehicle]()
    var merchandise_vehicles = ArrayBuffer[MerchandiseVehicle]()
    var monsters = ArrayBuffer[Monster]()
    var disasters = ArrayBuffer[Disaster]()
    var tataluc = ArrayBuffer[TataDoritosLuc]()

    var sandstorm = Disaster(DisasterType.Sandstorm)
    var earthquake = Disaster(DisasterType.Earthquake)
    var oilSpill = Disaster(DisasterType.OilSpill)
    disasters += sandstorm
    disasters += earthquake
    disasters += oilSpill

    var money: Int = 0

    var cityIDCount = 0
    var connexionIDCount = 0

    var ongoingMonsterAttack = false
    var notNoticedNewCity = false

    def create_city(name: String, pos: Vector2[Float], pop: Int): City =
        val c = City(name, pos, pop)
        c.id = cityIDCount
        cityIDCount = cityIDCount + 1
        cities += c
        game.get_biome(pos) match
            case BiomeType.Plain  => earthquake.isPossible = true
            case BiomeType.Desert => sandstorm.isPossible = true
            case BiomeType.Ocean  => oilSpill.isPossible = true
            case _                => ()
        c

    def is_connexion_legal(city1: City, city2: City, city1Type: BiomeType, city2Type: BiomeType, ctype: ConnexionType) =
        /*determines if connexion is legal i.e. this connexion type can exist between theses biomes and there is no existing connexion*/
        var isLegalBiome = false
        var alreadyExists = false
        isLegalBiome =
            (ctype == ConnexionType.Plane) || (ctype == ConnexionType.Boat && (city1Type == BiomeType.Ocean || city2Type == BiomeType.Ocean) && city1Type != BiomeType.Montain && city2Type != BiomeType.Montain) || (ctype == ConnexionType.Train && city1Type != BiomeType.Montain && city2Type != BiomeType.Montain && city1Type != BiomeType.Ocean && city2Type != BiomeType.Ocean)
        for con <- connexions do
            if con.city1 == city1 && con.city2 == city2 || con.city1 == city2 && con.city2 == city1 then alreadyExists = true
        isLegalBiome && !alreadyExists

    def create_connexion(city1: City, city2: City, ctype: ConnexionType): Option[Connexion] =
        city1.notNoticed = false
        city2.notNoticed = false
        for connexion <- connexions do
            connexion.passActivity = 1
            connexion.merchActivity = 1
        val l = Connexion(city1, city2, ctype)
        l.id = connexionIDCount
        connexionIDCount = connexionIDCount + 1
        connexions += l
        Some(l)

    def update(dt: Float) =
        val tatadead = ArrayBuffer[TataDoritosLuc]()

        for vehicle <- passenger_vehicles do vehicle.update(dt)
        for vehicle <- merchandise_vehicles do vehicle.update(dt)
        for monster <- monsters do monster.update(dt)
        for disaster <- disasters do disaster.update(dt)
        for tata <- tataluc do
            tata.update(dt)
            if tata.reachedBottom then tatadead += tata
        for tata <- tatadead do tataluc -= tata
        if monsters.size == 0 then ongoingMonsterAttack = false
        var notNoticed = false
        for city <- cities do
            city.update(dt)
            if city.notNoticed then notNoticed = true
        notNoticedNewCity = notNoticed

    def closest_city(wpos: Vector2[Float]): Option[City] =
        var closestCity: Option[City] = None
        for city <- cities do
            if closestCity == None || dist(wpos, city.pos) < dist(wpos, closestCity.get.pos) then closestCity = Some(city)
        closestCity

    def closest_connexion(wpos: Vector2[Float]): Option[(Connexion, Float, Vector2[Float])] = // Connexion, section, percentage
        var closestPoint: Option[Vector2[Float]] = None
        var closestPercentage: Option[Float] = None
        var closestConnexion: Option[Connexion] = None
        for connexion <- connexions do
            val p = point_on_line(connexion.city1.pos, connexion.city2.pos, wpos)
            if p != None then
                if closestPoint == None || (dist(wpos, p.get) < dist(wpos, closestPoint.get)) then
                    closestPoint = p
                    closestConnexion = Some(connexion)
                    closestPercentage = Some(
                        1f - (p.get.x - connexion.city2.pos.x) / (connexion.city1.pos.x - connexion.city2.pos.x)
                    )
        if closestPoint == None then None
        else Some((closestConnexion.get, closestPercentage.get, closestPoint.get))

    def find_city_by_id(id: Int) =
        var c: Option[City] = None
        for city <- cities do if city.id == id then c = Some(city)
        c

    def find_connexion_by_id(id: Int) =
        var c: Option[Connexion] = None
        for connexion <- connexions do if connexion.id == id then c = Some(connexion)
        c
