#include <unistd.h>
#include <cstdio>
#include <cstdlib>
#include <cstring>
//#include <sys/socket.h>
//#include <netinet/in.h>
#include "server.h"

int server::spustiServer(int argc, char **argv) {
//    int sockfd, newsockfd;
//    socklen_t cli_len;
//    struct sockaddr_in serv_addr, cli_addr;
//    int n;
//    char buffer[256];
//
//    if (argc < 2)
//    {
//        fprintf(stderr,"usage %s port\n", argv[0]);
//        return 1;
//    }
//
//    bzero((char*)&serv_addr, sizeof(serv_addr));
//    serv_addr.sin_family = AF_INET;
//    serv_addr.sin_addr.s_addr = INADDR_ANY;
//    serv_addr.sin_port = htons(atoi(argv[1]));
//
//    sockfd = socket(AF_INET, SOCK_STREAM, 0);
//    if (sockfd < 0)
//    {
//        perror("Error creating socket");
//        return 1;
//    }
//
//    if (bind(sockfd, (struct sockaddr*)&serv_addr, sizeof(serv_addr)) < 0)
//    {
//        perror("Error binding socket address");
//        return 2;
//    }
//
//    listen(sockfd, 5);
//    cli_len = sizeof(cli_addr);
//
//    newsockfd = accept(sockfd, (struct sockaddr*)&cli_addr, &cli_len);
//    if (newsockfd < 0)
//    {
//        perror("ERROR on accept");
//        return 3;
//    }
//
//
//
//
//
//

    return 0;
}
