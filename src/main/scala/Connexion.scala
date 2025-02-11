package connexion

import sfml.system.Vector2

import city.City
import utils.*
import ui.*

enum ConnexionType:
    case Train
    case Boat
    case Plane

class Connexion(var city1: City, var city2: City, var ctype: ConnexionType = ConnexionType.Train):

    var id: Int = 0

    var passActivity: Int = 0
    var merchActivity: Int = 0

    def get_length() =
        vec2_norm(city1.pos - city2.pos)

    def in_click_range(uvMousePos: Vector2[Float]): Boolean =
        val city1pos = ui.worldpos_to_uvpos(city1.pos)
        val city2pos = ui.worldpos_to_uvpos(city2.pos)
        var res = false
        var t = 0f
        val right = city1pos.x >= city2pos.x
        val up = city1pos.y <= city2pos.y
        var pos = city1pos + scalar_product(t, city2pos - city1pos)
        while pos.x >= city2pos.x == right && pos.y <= city2pos.y == up do
            if dist(pos, uvMousePos) < 0.02f then res = true
            t += 0.01f
            pos = city1pos + scalar_product(t, city2pos - city1pos)
        return res

    def get_wpos(): Vector2[Float] =
        return Vector2((city1.pos.x + city2.pos.x) / 2, (city1.pos.y + city2.pos.y) / 2)
