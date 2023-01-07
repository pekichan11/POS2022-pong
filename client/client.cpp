#include "client.h"
#include <iostream>


sf::TcpSocket* client::runTcpClient(unsigned short port, std::string ip) {

    sf::IpAddress server = sf::IpAddress::getLocalAddress() ;

    sf::TcpSocket* socket = new sf::TcpSocket;


    if (socket->connect(server, port) != sf::Socket::Status::Done)
        return nullptr;
    std::cout << "Connected to server " << server << std::endl;

    std::string text = " new client just connected! ";
    socket->send(text.c_str() , sizeof(text) + 1);

    char buffer[2000];
    std::size_t received;

    socket->receive(buffer, sizeof(buffer), received);
    std::cout << "Message received from the server: " << buffer << std::endl;
    return socket;
}
