package tata

import sfml.system.Vector2

import utils.*

class TataDoritosLuc(var uvpos: Vector2[Float], var facingRight: Int):
    var timeSinceChangedSide = 0f
    var reachedBottom = false

    def update(dt: Float) =
        uvpos = Vector2(uvpos.x + facingRight * dt / 20, uvpos.y + dt / 4)
        timeSinceChangedSide += dt
        if timeSinceChangedSide >= 1 then
            facingRight *= -1
            timeSinceChangedSide = 0f
        if uvpos.y >= 1 then reachedBottom = true
