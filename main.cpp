#include <thread>
#include <mutex>
#include "ThreadData/ThreadData.h"
#include "FileHandling/FileRead.h"
#include "FileHandling/FileWrite.h"
#include "Game/Game.h"
#include <SFML/Network.hpp>
#include "server/server.h"
#include "client/client.h"
#include <string.h>


int main(int argc, char * argv[]) {

    server server;
    client client;
    sf::TcpSocket* socket;
    bool jeServer;
    if (strcmp(argv[1], "s") == 0) {
        socket = server.spustiServer(atoi(argv[2]));
        jeServer = true;
    }
    if (strcmp(argv[1], "c") == 0){
        socket = client.runTcpClient(atoi(argv[2]), argv[3]);
        jeServer = false;
    }
    if (strcmp(argv[1], "s") != 0 && strcmp(argv[1], "c") != 0) {
        std::cout << "Error not specifed server or client " << std::endl;
        return 1;
    }
    std::mutex* mutex = new std::mutex();
    std::list<std::string> results = {};
    ThreadData data = {5, results};

    std::thread fileRead(FileRead(), &data, std::ref(*mutex));
    std::thread play(Game(socket, jeServer), &data, std::ref(*mutex));
    std::thread fileWrite(FileWrite(), &data, std::ref(*mutex));

    fileRead.join();
    play.join();
    fileWrite.join();

    delete mutex;

    return 0;
}