
#ifndef POS2022_PONG_SERVER_H
#define POS2022_PONG_SERVER_H
#include <SFML/Network.hpp>


class server {
public:
    server() = default;
    static sf::TcpSocket* runServer(unsigned short port);
};


#endif
