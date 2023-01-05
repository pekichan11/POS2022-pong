#include <iostream>
#include <SFML/Graphics.hpp>
#include "Platform/Platform.h"
#include "Ball/Ball.h"
#include <sstream>

int main()
{
    const int SCREEN_HEIGT = 600;
    const int SCREEN_WIDTH = 750;
    Platform player1(SCREEN_WIDTH - 20, SCREEN_HEIGT/2 - 50);
    Platform player2(10 , SCREEN_HEIGT/2 - 50);
    Ball ball(SCREEN_WIDTH/2, SCREEN_HEIGT/2 - 50);

    int counter1 = 0;
    int counter2 = 0;

    sf::RenderWindow window(sf::VideoMode(SCREEN_WIDTH, SCREEN_HEIGT), "Pong");

    while (window.isOpen())
    {
        sf::Event event;

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        //Controls
        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Up)) {
            if (player1.getPosition().y > 0) {
                player1.moveUp();
            }
        }

        if(sf::Keyboard::isKeyPressed(sf::Keyboard::Down)) {
            if (player1.getPosition().y < SCREEN_HEIGT - 100) {
                player1.moveDown();
            }
        }

        if(sf::Keyboard::isKeyPressed(sf::Keyboard::W)) {
            if (player2.getPosition().y > 0) {
                player2.moveUp();
            }
        }

        if(sf::Keyboard::isKeyPressed(sf::Keyboard::S)) {
            if (player2.getPosition().y < SCREEN_HEIGT - 100) {
                player2.moveDown();
            }
        }

        //Basic logic
        ball.reboundSides(500);
        ball.passLeft(750, 500) ? counter1++ : 0;
        ball.passRight(750, 500) ? counter2 ++ : 0;

        if (ball.getBallFloatRec().intersects(player1.getPlatformFloatRect())) {
            ball.reboundPlatform();
        }

        if (ball.getBallFloatRec().intersects(player2.getPlatformFloatRect())) {
            ball.reboundPlatform();
        }


        //Text
        std::stringstream sSteam1;
        std::stringstream sSteam2;

        sSteam1 << "Player1: " << counter1;
        sSteam2 << "Player2: " << counter2;

        sf::Text textP1;
        sf::Text textP2;
        sf::Font font;
        font.loadFromFile("../Malta_INK.ttf");

        textP1.setFont(font);
        textP2.setFont(font);
        textP1.setCharacterSize(35);
        textP2.setCharacterSize(35);
        textP1.setFillColor(sf::Color::Green);
        textP2.setFillColor(sf::Color::Green);

        textP1.setPosition(500, 550);
        textP2.setPosition(50, 550);

        textP1.setString(sSteam1.str());
        textP2.setString(sSteam2.str());

        //Update
        ball.update();
        player1.update();
        player2.update();

        //Draw
        window.clear(sf::Color::Black);

        window.draw(player1.getPlatform());
        window.draw(player2.getPlatform());
        window.draw(ball.getBall());
        window.draw(textP1);
        window.draw(textP2);
        window.display();

    }
    return 0;
}