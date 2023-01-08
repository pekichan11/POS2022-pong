#include <iostream>
#include <SFML/Graphics.hpp>
#include <SFML/Network.hpp>
#include "../Platform/Platform.h"
#include "../Ball/Ball.h"
#include <sstream>
#include <thread>
#include <mutex>
#include <cstdio>
#include "../ThreadData/ThreadData.h"
#include <string.h>


#ifndef POS2022_PONG_GAME_H
#define POS2022_PONG_GAME_H


class Game {
private:
    const int windowHeight = 600;
    const int windowWidth = 750;
    const int playableHeight = 500;

    int counter1 = 0;
    int counter2 = 0;

    bool server = true;
    Platform player1 = Platform(750 - 20, 250);
    Platform player2 = Platform(10, 250);
    Ball ball = Ball(750 / 2, 250);
    sf::TcpSocket* socket;

public:
    Game();
    Game(sf::TcpSocket* socket, bool server) : socket(socket), server(server) {}
    void play();
    void operator()(void*gData, std::mutex& mutex);
    ~Game();
};


#endif //POS2022_PONG_GAME_H
