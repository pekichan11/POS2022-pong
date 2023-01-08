#include <SFML/Graphics.hpp>

#ifndef POS2022_PONG_PLATFORM_H
#define POS2022_PONG_PLATFORM_H

class Platform {
private:
    sf::Vector2f platformPosition;
    double platformSpeed = 0.5f;
    sf::RectangleShape platform;

public:
    Platform(double x, double y);
    ~Platform();
    sf::Vector2f getPosition();
    sf::RectangleShape getPlatform();
    sf::FloatRect getPlatformFloatRect();
    void moveUp();
    void moveDown();
    void update();
    void setPlatform(int x, int y);
};

#endif //POS2022_PONG_PLATFORM_H
