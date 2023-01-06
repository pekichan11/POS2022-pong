#include <thread>
#include <mutex>
#include "ThreadData/ThreadData.h"
#include "FileHandling/FileRead.h"
#include "FileHandling/FileWrite.h"
#include "Game/Game.h"

int main() {
    std::mutex mutex;
    std::list<std::string> results = {};
    ThreadData data = {5, results};

    std::thread fileRead(FileRead(), &data, std::ref(mutex));
    std::thread play(Game(), &data, std::ref(mutex));
    std::thread fileWrite(FileWrite(), &data, std::ref(mutex));

    fileRead.join();
    play.join();
    fileRead.join();

    return 0;
}