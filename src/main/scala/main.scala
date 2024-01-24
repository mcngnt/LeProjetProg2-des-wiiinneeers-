class Bicycle(name:String) {
var counter:Double = 0
def move {
counter += 1
println(name+": mon compteur est à "+counter)
}
def brake { println("j’arrête") }
}

class RoadBicycle(name:String) extends Bicycle(name) {
override def move {
counter += 1.5
println(name+": ∗roule∗")
}
}
class RustyBicycle(name:String) extends Bicycle(name) {
override def brake { println("eek") }
}

object MyProgram {
def travel(b:Bicycle, d:Int) = {
    while(b.counter < d) b.move
    b.brake
}
def main(args: Array[String]): Unit = {
val b = new RustyBicycle("Moulinette")
val c = new RoadBicycle("Tricycle")
travel(b, 8)
travel(c, 8)
}
}