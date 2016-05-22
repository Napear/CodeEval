//
// Created by kevin on 3/9/16.
//

#include <iostream>
#include <fstream>
using namespace std;
int main(int argc, char *argv[]) {
    ifstream stream(argv[1]);
    string line;
    while (getline(stream, line)) {
        int len = stoi(line);

    }
    return 0;
}