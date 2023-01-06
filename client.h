#ifndef POS2022_PONG_CLIENT_H
#define POS2022_PONG_CLIENT_H

#include <string>

class client {
    void runTcpClient(unsigned short port, std::string ip);
};

#endif //POS2022_PONG_CLIENT_H
