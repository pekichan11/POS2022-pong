#include <fstream>
#include "FileRead.h"

void FileRead::operator()(void *gData, std::mutex& mutex) {
    ThreadData *data = (ThreadData*)gData;
    fprintf(stderr, "File read initiated\n");

    std::string line;
    std::ifstream readFile("ScoreHistory.txt");

    std::lock_guard<std::mutex> lock(mutex);

    while (std::getline(readFile, line)) {
        fprintf(stderr, "getting line\n");
        data->results.push_back(line);
    }

    fprintf(stderr, "Reading complete\n");
    readFile.close();
}
