#include <fstream>
#include <algorithm>
#include <iostream>
#include "FileRead.h"

void FileRead::operator()(void *gData, std::mutex& mutex) {
    ThreadData *data = (ThreadData*)gData;
    fprintf(stderr, "File read initiated\n");

    std::string line;
    std::ifstream readFile("ScoreHistory.txt");

    std::lock_guard<std::mutex> lock(mutex);

    while (std::getline(readFile, line)) {
        data->results.push_back(line);
    }

    fprintf(stderr, "Reading complete\n");
    readFile.close();

    std::cout<<"Games history: \n";

    std::for_each(data->results.begin(), data->results.end(), [](const std::string line)
    {
        std::cout<<line<<"\n";
    });
}
