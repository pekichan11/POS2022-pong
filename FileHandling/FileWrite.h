#include <thread>
#include <mutex>
#include <cstdio>
#include "../ThreadData/ThreadData.h"

#ifndef POS2022_PONG_FILEWRITE_H
#define POS2022_PONG_FILEWRITE_H


class FileWrite {
public:
    void operator()(void*gData, std::mutex& mutex);
};


#endif //POS2022_PONG_FILEWRITE_H
