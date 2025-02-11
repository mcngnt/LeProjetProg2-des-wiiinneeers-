import sfml.graphics.RenderWindow
import sfml.system.Clock
import sfml.window.VideoMode

import game.*
import renderer.*
import ui.*
import utils.*

@main def main =
    val window = RenderWindow(VideoMode(600, 600), "Vehicule Company Tycoon")
    window.framerateLimit = 60

    // UTILS
    val dt = 1f / 60f
    val clock = Clock()
    var accumulator = 0f

    /*game and ui are global*/

    game.init()
    ui = UI(Some(window))
    val renderer = Renderer(window)

    while window.isOpen() do

        // UI
        ui.handle_events()
        ui.update()

        // DRAWING
        renderer.draw()

        // UPDATE
        accumulator = accumulator + clock.elapsedTime.asSeconds
        clock.restart()
        while accumulator >= dt do
            ui.fixed_update(dt)
            game.update(dt)
            accumulator = accumulator - dt

    System.exit(0)
