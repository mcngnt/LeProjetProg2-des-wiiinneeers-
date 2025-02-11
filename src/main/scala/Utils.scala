package utils

import scala.collection.mutable.Map
import scala.math.{Pi, atan2, cos, floor, sin, sqrt, toDegrees}
import scala.util.Random

import sfml.system.{Vector2, Vector3}

// Useful functions and classes used throughout the code

class PerlinNoise(var seed: Long):
    val rand = Random(seed)
    val thetaOffset = rand.nextFloat() * Pi.toFloat * 2f
    val offset = Vector2(cos(thetaOffset).toFloat, sin(thetaOffset).toFloat) * rand.nextFloat * 30f
    var grid = Map[(Int, Int), Float]()

    def lerp(a0: Float, a1: Float, w: Float): Float =
        (a1 - a0) * (3f - w * 2f) * w * w + a0

    def get_hash(x: Int, y: Int): Int =
        ((x + y) * (x + y + 1) / 2) + y

    def rand_grad(gx: Int, gy: Int): Vector2[Float] =
        if !grid.contains((gx, gy)) then grid((gx, gy)) = rand.nextFloat() * Pi.toFloat * 2f
        val theta = grid((gx, gy))
        Vector2(cos(theta).toFloat, sin(theta).toFloat)

    def dot_grad(gx: Int, gy: Int, x: Float, y: Float) =
        val grad = rand_grad(gx, gy)
        val dx = x - gx.toFloat
        val dy = y - gy.toFloat
        dx * grad.x + dy * grad.y

    def sample(v: Vector2[Float]) =
        val nx = v.x / 1300f + offset.x
        val ny = v.y / 1300f + offset.y
        val x0 = floor(nx).toInt
        val x1 = x0 + 1
        val y0 = floor(ny).toInt
        val y1 = y0 + 1

        val sx = nx - x0.toFloat
        val sy = ny - y0.toFloat

        var n0 = dot_grad(x0, y0, nx, ny)
        var n1 = dot_grad(x1, y0, nx, ny)
        val ix0 = lerp(n0, n1, sx)
        n0 = dot_grad(x0, y1, nx, ny)
        n1 = dot_grad(x1, y1, nx, ny)
        val ix1 = lerp(n0, n1, sx)

        lerp(ix0, ix1, sy) * 0.5f + 0.5f

val cityNames = List("Square", "Circle", "Triangle")

def assign(v1: Vector2[Float], v2: Vector2[Float]) =
    v1.x = v2.x
    v1.y = v2.y

def dot(v1: Vector2[Float], v2: Vector2[Float]): Float =
    v1.x * v2.x + v1.y * v2.y

def vec2_norm(v: Vector2[Float]): Float =
    sqrt(v.x * v.x + v.y * v.y).toFloat

def normalize(v: Vector2[Float]): Vector2[Float] =
    v / vec2_norm(v)

def dist(v1: Vector2[Float], v2: Vector2[Float]): Float =
    vec2_norm(v1 - v2)

def angle_of(p1: Vector2[Float], p2: Vector2[Float]): Float =
    toDegrees(atan2(p2.y - p1.y, p2.x - p1.x)).toFloat

def angle_of(d: Vector2[Float]): Float =
    toDegrees(atan2(d.y, d.x)).toFloat

def scalar_product(t: Float, v: Vector2[Float]): Vector2[Float] =
    Vector2(t * v.x, t * v.y)

def mult(v1: Vector2[Float], v2: Vector2[Float]): Vector2[Float] =
    Vector2(v1.x * v2.x, v1.y * v2.y)

def point_on_line(a: Vector2[Float], b: Vector2[Float], p: Vector2[Float]): Option[Vector2[Float]] =
    val ap: Vector2[Float] = p - a
    val ab: Vector2[Float] = b - a
    val t: Float = dot(ap, ab) / dot(ab, ab)
    if t < 0 || t > 1 then None else Some(a + ab * t)

def vec_from_angle(angle: Float, norm: Float): Vector2[Float] =
    Vector2(cos(angle).toFloat, sin(angle).toFloat) * norm

def string_to_vector2(input: String): Option[Vector2[Float]] =
    input.split(',') match
        case Array(x, y) =>
            try Some(Vector2(x.toFloat, y.toFloat))
            catch case _: NumberFormatException => None
        case _ => None

def string_to_vector3(input: String): Option[Vector3[Float]] =
    input.split(',') match
        case Array(x, y, z) =>
            try Some(Vector3(x.toFloat, y.toFloat, z.toFloat))
            catch case _: NumberFormatException => None
        case _ => None
