package monster

import sfml.system.Vector2

import audiomanager.*
import connexion.*
import game.*
import utils.*
import vehicle.*

class Monster(var pos: Vector2[Float]):

    var target: Option[Vehicle] = None
    var targetPos: Vector2[Float] = Vector2(0f, 0f)
    var speed = 40f
    var hp = 100f
    var clicked = false
    var onTarget = false

    def update(dt: Float) =
        targetPos = Vector2(0f, 0f)
        for vehicle <- game.world.passenger_vehicles do
            if !target.isDefined then target = Some(vehicle)
            else if dist(vehicle.pos(), pos) < dist(target.get.pos(), pos) then target = Some(vehicle)
        if target.isDefined then targetPos = target.get.pos()
        pos += normalize(targetPos - pos) * speed * dt

        if target.isDefined && dist(targetPos, pos) < 20f then
            target.get.hp -= 10f * dt
            pos = targetPos
            if !onTarget then
                onTarget = true
                if target.get.vtype == ConnexionType.Boat then audioManager.play_sound("boatAttacked")
                else audioManager.play_sound("vehicleAttacked")
