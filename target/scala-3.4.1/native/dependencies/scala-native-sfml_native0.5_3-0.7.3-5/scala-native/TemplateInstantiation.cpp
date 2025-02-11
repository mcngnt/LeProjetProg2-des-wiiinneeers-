#include <SFML/Graphics.hpp>

namespace sf
{
    /* sfVector2[Float] */
    template class Vector2<float>;
    template Vector2<float> operator-(const Vector2<float> &);
    template Vector2<float> & operator+=(Vector2<float> & left, const Vector2<float> & right);
    template Vector2<float> & operator-=(Vector2<float> & left, const Vector2<float> & right);
    template Vector2<float> operator+(const Vector2<float> & left, const Vector2<float> & right);
    template Vector2<float> operator-(const Vector2<float> & left, const Vector2<float> & right);
    template Vector2<float> operator*(const Vector2<float> & left, float right);
    template Vector2<float> operator*(float left, const Vector2<float> & right);
    template Vector2<float> & operator*=(Vector2<float> & left, float right);
    template Vector2<float> operator/(const Vector2<float> & left, float right);
    template Vector2<float> & operator/=(Vector2<float> & left, float right);
    template bool operator==(const Vector2<float> & left, const Vector2<float> & right);
    template bool operator!=(const Vector2<float> & left, const Vector2<float> & right);

    /* sfVector2[Int] */
    template class Vector2<int>;
    template Vector2<int> operator-(const Vector2<int> &);
    template Vector2<int> & operator+=(Vector2<int> & left, const Vector2<int> & right);
    template Vector2<int> & operator-=(Vector2<int> & left, const Vector2<int> & right);
    template Vector2<int> operator+(const Vector2<int> & left, const Vector2<int> & right);
    template Vector2<int> operator-(const Vector2<int> & left, const Vector2<int> & right);
    template Vector2<int> operator*(const Vector2<int> & left, int right);
    template Vector2<int> operator*(int left, const Vector2<int> & right);
    template Vector2<int> & operator*=(Vector2<int> & left, int right);
    template Vector2<int> operator/(const Vector2<int> & left, int right);
    template Vector2<int> & operator/=(Vector2<int> & left, int right);
    template bool operator==(const Vector2<int> & left, const Vector2<int> & right);
    template bool operator!=(const Vector2<int> & left, const Vector2<int> & right);

    /* sfVector3[Float] */
    template class Vector3<float>;
    template Vector3<float> operator-(const Vector3<float> &);
    template Vector3<float> & operator+=(Vector3<float> & left, const Vector3<float> & right);
    template Vector3<float> & operator-=(Vector3<float> & left, const Vector3<float> & right);
    template Vector3<float> operator+(const Vector3<float> & left, const Vector3<float> & right);
    template Vector3<float> operator-(const Vector3<float> & left, const Vector3<float> & right);
    template Vector3<float> operator*(const Vector3<float> & left, float right);
    template Vector3<float> operator*(float left, const Vector3<float> & right);
    template Vector3<float> & operator*=(Vector3<float> & left, float right);
    template Vector3<float> operator/(const Vector3<float> & left, float right);
    template Vector3<float> & operator/=(Vector3<float> & left, float right);
    template bool operator==(const Vector3<float> & left, const Vector3<float> & right);
    template bool operator!=(const Vector3<float> & left, const Vector3<float> & right);

    /* sfVector3[Int] */
    template class Vector3<int>;
    template Vector3<int> operator-(const Vector3<int> &);
    template Vector3<int> & operator+=(Vector3<int> & left, const Vector3<int> & right);
    template Vector3<int> & operator-=(Vector3<int> & left, const Vector3<int> & right);
    template Vector3<int> operator+(const Vector3<int> & left, const Vector3<int> & right);
    template Vector3<int> operator-(const Vector3<int> & left, const Vector3<int> & right);
    template Vector3<int> operator*(const Vector3<int> & left, int right);
    template Vector3<int> operator*(int left, const Vector3<int> & right);
    template Vector3<int> & operator*=(Vector3<int> & left, int right);
    template Vector3<int> operator/(const Vector3<int> & left, int right);
    template Vector3<int> & operator/=(Vector3<int> & left, int right);
    template bool operator==(const Vector3<int> & left, const Vector3<int> & right);
    template bool operator!=(const Vector3<int> & left, const Vector3<int> & right);

    /* sfRect[Int] */
    template class Rect<int>;
    template bool operator==(const Rect<int> & left, const Rect<int> & right);
    template bool operator!=(const Rect<int> & left, const Rect<int> & right);

    /* sfRect[Float] */
    template class Rect<float>;
    template bool operator==(const Rect<float> & left, const Rect<float> & right);
    template bool operator!=(const Rect<float> & left, const Rect<float> & right);
} // namespace sf
