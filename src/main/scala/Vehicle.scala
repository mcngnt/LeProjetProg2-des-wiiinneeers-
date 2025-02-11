package vehicle

import scala.collection.mutable.{ArrayBuffer, Map}
import scala.math.min

import audiomanager.*
import city.City
import connexion.*
import disaster.*
import game.*
import uielement.*
import utils.*

abstract class Vehicle(
    var power: Int,
    var size: Int,
    var vtype: ConnexionType = ConnexionType.Train
):

    var percentage = 0f
    var currentConnexion: Option[Connexion] = None
    var wayOfTravel: Int = 1
    var hp = 100f
    var broken = false
    var almostBroken = false
    var nameShowing = false
    var timeSinceNameShowing = 0f
    var totalContent = 0
    var isPassTrain = true
    var speed = power
    // var shaking = false
    var skippingCities = false

    // if currentConnexion != None then panel.wpos = pos()

    def get_price() =
        var price = speed * size
        if vtype != ConnexionType.Train then price = (price * 1.2).toInt
        if vtype == ConnexionType.Plane then price = (price * 1.2).toInt
        price

    def pos() =
        val city1p = currentConnexion.get.city1.pos
        val city2p = currentConnexion.get.city2.pos
        city1p + (city2p - city1p) * percentage

    def dir() =
        val city1p = currentConnexion.get.city1.pos
        val city2p = currentConnexion.get.city2.pos
        normalize(city2p - city1p)

    def upgrade() =
        if game.comp.spend_money_vehicle((0.9f * get_price().toFloat).toInt, pos()) then
            size = (size * 1.5f).toInt
            speed = (speed * 1.5f).toInt

    def maintenance() =
        if game.comp.spend_money_vehicle(600, pos()) then
            hp = 100f
            broken = false
            almostBroken = false

    def update_content(city: City): Unit

    def is_compatible(ctype: ConnexionType) =
        ctype == vtype

    def find_connexions(city: City) =
        /*returns an array buffer of all compatible connexions the vehicle can use next*/
        val fconnexions = ArrayBuffer[(Connexion, Float)]()
        for connexion <- game.world.connexions do
            if connexion.city1 == city && is_compatible(connexion.ctype) then fconnexions += ((connexion, 0f))
            if connexion.city2 == city && is_compatible(connexion.ctype) then fconnexions += ((connexion, 1f))
        fconnexions

    def change_connexion() =
        /*makes vehicle follow a new connexion and returns visited city*/
        val targetCity = if percentage < 0f then currentConnexion.get.city1 else currentConnexion.get.city2
        var fconnexions = find_connexions(targetCity)
        var foundNewConnection = false
        if isPassTrain then fconnexions = fconnexions.sortBy(_(0).passActivity)
        else fconnexions = fconnexions.sortBy(_(0).merchActivity)
        for (connexion, p) <- fconnexions do
            if connexion != currentConnexion.get && !foundNewConnection then
                currentConnexion = Some(connexion)
                foundNewConnection = true
                percentage = p
        /*pick least visited available connexion for content type*/

        if percentage <= 0f then
            wayOfTravel = 1
            percentage = 0f
        else
            percentage = 1f
            wayOfTravel = -1
        /*percentage indicates whether current city is start or end of new connexion*/
        if isPassTrain then currentConnexion.get.passActivity += 1
        else currentConnexion.get.merchActivity += 1
        targetCity

    def update(dt: Float) =
        speed = power

        for disaster <- game.world.disasters do
            if disaster.isOngoing && disaster.is_affected(pos()) then
                vtype match
                    case ConnexionType.Plane =>
                        disaster.dtype match
                            case DisasterType.Sandstorm =>
                                speed = power / 2
                                hp -= 3f * dt
                            case DisasterType.Earthquake => skippingCities = true
                            case _                       => ()
                    case _ =>
                        speed = power / 2
                        hp -= 3f * dt

        if currentConnexion.isDefined && !broken then
            var needUpdateContent = false
            var targetCity: Option[City] = None
            percentage += speed * dt * wayOfTravel / currentConnexion.get.get_length()
            if percentage > 1f || percentage < 0f then
                /*vehicle reached city*/
                needUpdateContent = true
                targetCity = Some(change_connexion())
            if needUpdateContent && !skippingCities then update_content(targetCity.get)
        hp -= dt * game.rand.nextFloat
        if hp < 0 then broken = true
        if hp < 30f then
            if !almostBroken then audioManager.play_sound("broken")
            almostBroken = true
        skippingCities = false

    def change_connexion(connexion: Option[Connexion]) =
        currentConnexion = connexion

class PassengerVehicle(p_power: Int, p_size: Int, p_vtype: ConnexionType) extends Vehicle(p_power, p_size, p_vtype):

    isPassTrain = true
    val vehiclePass = Map[String, Int]()
    /*maps city types to the number of passengers who are going to this city type*/
    for name <- cityNames do vehiclePass(name) = 0

    def copy() =
        new PassengerVehicle(power, size, vtype)

    override def update_content(city: City) =
        game.comp.recieve_ticket_money(vehiclePass(city.name), city.pos)
        totalContent -= vehiclePass(city.name)
        city.gainXP(20 * vehiclePass(city.name))
        vehiclePass(city.name) = 0
        /*passengers get off*/
        for (name, number) <- city.passengers do
            /*new passengers get on*/
            val movingPassengers = min(size - totalContent, number)
            totalContent += movingPassengers
            if !(vehiclePass contains name) then vehiclePass(name) = 0
            vehiclePass(name) = vehiclePass(name) + movingPassengers
            city.passengers(name) = city.passengers(name) - movingPassengers

class MerchandiseVehicle(m_power: Int, m_size: Int, m_vtype: ConnexionType) extends Vehicle(m_power, m_size, m_vtype):

    isPassTrain = false
    val vehicleMerch = Map[BiomeType, Int]()
    /*maps biome types to the number of items from this biome type*/
    for biome <- biomes do vehicleMerch(biome) = 0

    def copy() =
        new MerchandiseVehicle(power, size, vtype)

    override def update_content(city: City) =
        for biome <- biomes do
            /*merch is dropped according to city needs*/
            val gettingOff = min(vehicleMerch(biome), city.merchNeeded(biome))
            game.comp.recieve_merch_money(gettingOff, city)
            city.gainXP(40 * gettingOff)
            totalContent -= gettingOff
            vehicleMerch(biome) -= gettingOff
            city.merchNeeded(biome) -= gettingOff
        val gettingOn = min(size - totalContent, city.merchProduced(game.get_biome(city.pos)))
        /*merch produced by city is loaded on vehicle*/
        vehicleMerch(game.get_biome(city.pos)) += gettingOn
        city.merchProduced(game.get_biome(city.pos)) -= gettingOn
        totalContent += gettingOn
