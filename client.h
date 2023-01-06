#ifndef POS2022_PONG_CLIENT_H
#define POS2022_PONG_CLIENT_H

#include <string>
#include <SFML/Network.hpp>

class client {
public:
    sf::TcpSocket* runTcpClient(unsigned short port, std::string ip);
};

#endif //POS2022_PONG_CLIENT_H
