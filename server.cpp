
#include <cstring>
#include <SFML/Network.hpp>
#include <iostream>
#include <iomanip>
#include "server.h"

int server::spustiServer(unsigned short port) {

    sf::TcpSocket socket;

    char buffer[2000];
    std::size_t recieved;

    sf::TcpListener listener;


    if (listener.listen(port) != sf::Socket::Status::Done) {
        return 1;
    }
    std::cout << "server is listening to port " <<
        port << "waiting for connection " << std::endl;

    if (listener.accept(socket) != sf::Socket::Status::Done) {
        return 2;
    }
    std::cout << "Client connected: " << socket.getRemoteAddress() << std::endl;


    socket.receive(buffer, sizeof(buffer), recieved);
    std::cout << buffer << std::endl;
    std::string text = "server is comunicating with client";
    system("puase");
    socket.send(text.c_str(), text.length() + 1);
    //tu sa spusti hra dorobit bool hodnotu ci hra bezi


}
