#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>

/* Generic return type handlers */
void glue_returnTypeHandler(sf::Vector2f * buffer, sf::Vector2f (*callback)(void *), void * data)
{
    new (buffer) sf::Vector2f(callback(data));
}

void glue_returnTypeHandler(sf::Vector2i * buffer, sf::Vector2i (*callback)(void *), void * data)
{
    new (buffer) sf::Vector2i(callback(data));
}

void glue_returnTypeHandler(sf::Vector3f * buffer, sf::Vector3f (*callback)(void *), void * data)
{
    new (buffer) sf::Vector3f(callback(data));
}

void glue_returnTypeHandler(sf::Vector3i * buffer, sf::Vector3i (*callback)(void *), void * data)
{
    new (buffer) sf::Vector3i(callback(data));
}

void glue_returnTypeHandler(sf::FloatRect * buffer, sf::FloatRect (*callback)(void *), void * data)
{
    new (buffer) sf::FloatRect(callback(data));
}

void glue_returnTypeHandler(sf::IntRect * buffer, sf::IntRect (*callback)(void *), void * data)
{
    new (buffer) sf::IntRect(callback(data));
}

void glue_returnTypeHandler(sf::Time * buffer, sf::Time (*callback)(void *), void * data)
{
    new (buffer) sf::Time(callback(data));
}

/* Arguments-specific return type handlers */
void glue_returnTypeHandler(sf::Image * buffer, sf::Image (*fptr)(void *), void * arg1)
{
    new (buffer) sf::Image(fptr(arg1));
}

void glue_returnTypeHandler(sf::Transform * buffer, sf::Transform (*fptr)(void *), void * arg1)
{
    new (buffer) sf::Transform(fptr(arg1));
}
