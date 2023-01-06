#include <fstream>
#include <algorithm>
#include "FileWrite.h"

void FileWrite::operator()(void *gData, std::mutex& mutex) {
    ThreadData *data = (ThreadData*)gData;
    fprintf(stderr, "File write initiated\n");

    std::ofstream writeFile("ScoreHistory.txt");

    std::lock_guard<std::mutex> lock(mutex);

    std::for_each(data->results.begin(), data->results.end(), [&writeFile](const std::string line)
    {
        writeFile << line;
        fprintf(stderr, "Line writing\n");
    });

    fprintf(stderr, "Writing complete\n");
    writeFile.close();
}
