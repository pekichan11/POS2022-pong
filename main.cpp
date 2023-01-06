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
    if (strcmp(argv[1], "s") == 0) {
        socket = server.spustiServer(atoi(argv[2]));
    }
    if (strcmp(argv[1], "c") == 0){
        socket = client.runTcpClient(atoi(argv[2]), argv[3]);
    }

    std::mutex mutex;
    std::list<std::string> results = {};
    ThreadData data = {5, results};

    std::thread fileRead(FileRead(), &data, std::ref(mutex));
    std::thread play(Game(socket), &data, std::ref(mutex));
    std::thread fileWrite(FileWrite(), &data, std::ref(mutex));

    fileRead.join();
    play.join();
    fileRead.join();

    return 0;
}