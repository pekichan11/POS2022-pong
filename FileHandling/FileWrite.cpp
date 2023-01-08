#include <fstream>
#include <algorithm>
#include <iostream>
#include "FileWrite.h"

void FileWrite::operator()(void *gData, std::mutex& mutex) {
    auto *data = (ThreadData*)gData;
    std::cout<<"File write initiated\n";

    std::ofstream writeFile("ScoreHistory.txt");

    std::lock_guard<std::mutex> lock(mutex);

    std::for_each(data->results.begin(), data->results.end(), [&writeFile](const std::string& line)
    {
        writeFile << line << std::endl;
    });

    std::cout<<"Writing complete\n";
    writeFile.close();
}
