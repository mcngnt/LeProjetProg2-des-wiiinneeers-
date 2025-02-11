package company

import scala.collection.mutable.ArrayBuffer

import sfml.system.Vector2

import audiomanager.*
import city.*
import connexion.*
import vehicle.Vehicle

class Company:
    var money: Int = 10000

    var tickets = ArrayBuffer[(Int, Vector2[Float], Boolean)]()
    /*valid and invalid transactions to be shown on screen
    all functions check if player can afford the transaction then spend money if applicable and add ticket to tickets*/

    var nbPassengerTrains = 0
    var nbMerchandiseTrains = 0
    var nbPassengerPlanes = 0
    var nbMerchandisePlanes = 0
    var nbPassengerBoats = 0
    var nbMerchandiseBoats = 0

    def buy_vehicle(t: Vehicle, wpos: Vector2[Float]) =
        val p = t.get_price()
        if money >= p then
            money -= p
            val t = (-p, wpos, true)
            tickets += t
            true
        else
            val t = (-p, wpos, false)
            tickets += t
            false

    def buy_connexion(ctype: ConnexionType, wpos: Vector2[Float]) =
        val p = (ctype match
            case ConnexionType.Plane => 1200
            case ConnexionType.Boat  => 1100
            case _                   => 1000
        )
        if money >= p then
            money -= p
            val t = (-p, wpos, true)
            tickets += t
            true
        else
            val t = (-p, wpos, false)
            tickets += t
            false

    def reimburse_connexion(ctype: ConnexionType, wpos: Vector2[Float]) =
        val p = (ctype match
            case ConnexionType.Plane => 1200
            case ConnexionType.Boat  => 1100
            case _                   => 1000
        )
        money += p
        val t = (p, wpos, true)
        tickets += t

    def recieve_ticket_money(nb: Int, wpos: Vector2[Float]) =
        val p = nb * 90
        money += p
        val t = (p, wpos, true)
        tickets += t
        if p > 0 then audioManager.play_sound("money")

    def recieve_merch_money(weight: Int, city: City) =
        val p = weight * 50 * city.level
        money += p
        val t = (p, city.pos, true)
        tickets += t
        if p > 0 then audioManager.play_sound("money")

    def spend_money_vehicle(price: Int, wpos: Vector2[Float]) =
        if money >= price then
            audioManager.play_sound("money")
            money -= price
            val t = (-price, wpos, true)
            tickets += t
            true
        else
            val t = (-price, wpos, false)
            tickets += t
            false
