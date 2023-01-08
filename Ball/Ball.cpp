#include "Ball.h"

Ball::Ball(double x, double y) {
    this->ballPosition.x = x;
    this->ballPosition.y = y;
    this->ball.setSize(sf::Vector2f(10, 10));
    this->ball.setPosition(this->ballPosition);
    this->ball.setFillColor(sf::Color::White);
}

sf::RectangleShape Ball::getBall() {
    return this->ball;
}

sf::FloatRect Ball::getBallFloatRec() {
    return this->ball.getGlobalBounds();
}

void Ball::reboundSides(int windowHeight) {
    if (this->ballPosition.y > windowHeight) {
        this->ballVelocityY *= -1;
    }
    else if (ballPosition.y <= 0) {
        this->ballVelocityY *= -1;
    }
}

bool Ball::passLeft(int windowWidth, int windowHeight) {
    if (this->ballPosition.x < 0) {
        this->ballPosition.x = windowWidth / 2;
        this->ballPosition.y = windowHeight / 2;

        return true;
    }
    return false;
}

bool Ball::passRight(int windowWidth, int windowHeight) {
    if (this->ballPosition.x > windowWidth + 10) {
        this->ballPosition.x = windowWidth / 2;
        this->ballPosition.y = windowHeight / 2;

        return true;
    }
    return false;
}

sf::Vector2f Ball::getBallPosition() {
    return sf::Vector2f();
}

void Ball::intersectPlatform() {

}

bool Ball::reboundPlatform() {
    this->ballPosition.x -= (this->ballVelocityX * 30);
    this->ballVelocityX *= -1;
    return false;
}

void Ball::update() {
    this->ballPosition.x += this->ballVelocityX;
    this->ballPosition.y += this->ballVelocityY;

    this->ball.setPosition(ballPosition);
}

double Ball::getVelocityX() {
    return this->ballVelocityX;
}

double Ball::getVelocityY() {
    return this->ballVelocityY;
}

void Ball::stop() {
    this->ballVelocityX = 0;
    this->ballVelocityY = 0;
}

void Ball::go() {
    this->ballVelocityX = 0.5f;
    this->ballVelocityY = 0.5f;
}

Ball::~Ball() {

}

void Ball::changeVelocity(std::string change) {
    if (strcmp(change.c_str(), "y") == 0) {
        this->ballVelocityY *= -1;
    } else {
        this->ballVelocityX *= -1;
    }
}

