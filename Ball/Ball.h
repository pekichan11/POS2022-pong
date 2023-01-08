#include <SFML/Graphics.hpp>
#include <cmath>
#include <string.h>

#ifndef POS2022_PONG_BALL_H
#define POS2022_PONG_BALL_H


class Ball {
private:
    sf::RectangleShape ball;
    sf::Vector2f ballPosition;
    double ballVelocityX = 0.5f;
    double ballVelocityY = 0.5f;

public:
    Ball(double x, double y);
    ~Ball();
    sf::RectangleShape getBall();
    sf::FloatRect getBallFloatRec();
    void reboundSides(int windowHeight);
    bool passLeft(int windowWidth, int windowHeight);
    bool passRight(int windowWidth, int windowHeight);
    sf::Vector2f getBallPosition();
    void intersectPlatform();
    bool reboundPlatform();
    void update();
    void changeVelocity(std::string change);
    double getVelocityX();
    double getVelocityY();
    void stop();
    void go();
};


#endif //POS2022_PONG_BALL_H
