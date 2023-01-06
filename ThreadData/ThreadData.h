#include <thread>
#include <list>
#include <string>

#ifndef POS2022_PONG_THREADDATA_H
#define POS2022_PONG_THREADDATA_H

typedef struct ThreadData{
    int gameLength;
    std::list<std::string> results;

}ThreadData;

#endif //POS2022_PONG_THREADDATA_H
