#include "Platform.h"

Platform::Platform(double x, double y) {
    this->platformPosition.x = x;
    this->platformPosition.y = y;
    this->platform.setSize(sf::Vector2f(10, 100));
    this->platform.setPosition(this->platformPosition);
}

sf::Vector2f Platform::getPosition() {
    return this->platformPosition;
}

sf::RectangleShape Platform::getPlatform() {
    return this->platform;
}

sf::FloatRect Platform::getPlatformFloatRect() {
    return this->platform.getGlobalBounds();
}

void Platform::moveUp() {
    this->platformPosition.y -= this->platformSpeed;
}

void Platform::moveDown() {
    this->platformPosition.y += this->platformSpeed;
}

void Platform::update() {
    this->platform.setPosition(this->platformPosition);
}

Platform::~Platform() {
}

void Platform::setPlatform(int x, int y) {
    this->platformPosition.y = y;
    this->platformPosition.x = x;
}
