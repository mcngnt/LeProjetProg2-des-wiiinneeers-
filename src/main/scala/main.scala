class Bycicle:
	protected var counter : Int = 0
	def move() =
		counter += 1
		println(s"Counter: ${counter}")

class RoadBycicle extends Bycicle:
	override def move() =
		counter += 3
		println(s"Counter: ${counter}")

@main def main =
	val b = RoadBycicle()
	b.move()
	println("Hello world!")