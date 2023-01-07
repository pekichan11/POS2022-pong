
#include <cstring>
#include <iostream>
#include "server.h"

sf::TcpSocket* server::spustiServer(unsigned short port) {

    sf::TcpSocket* socket = new sf::TcpSocket;

    char buffer[2000];
    std::size_t received;

    sf::TcpListener listener;


    if (listener.listen(port) != sf::Socket::Status::Done) {
        return nullptr;
    }
    std::cout << "server is listening to port " <<
        port << " waiting for connection " << std::endl;

    if (listener.accept(*socket) != sf::Socket::Status::Done) {
        return nullptr;
    }
    std::cout << "Client connected: " << socket->getRemoteAddress() << std::endl;


    socket->receive(buffer, sizeof(buffer), received);
    std::cout << buffer << std::endl;
    std::string text = "server is comunicating with client";
    system("pause");
    socket->send(text.c_str(), text.length() + 1);

    return socket;


}
