#include <thread>
#include <cstdio>
#include <mutex>
#include "../ThreadData/ThreadData.h"

#ifndef POS2022_PONG_FILEREAD_H
#define POS2022_PONG_FILEREAD_H


class FileRead {
public:
    void operator()(void*gData, std::mutex& mutex);
};


#endif //POS2022_PONG_FILEREAD_H
