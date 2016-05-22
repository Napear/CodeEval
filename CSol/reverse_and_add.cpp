//
// Created by kevin on 1/28/16.
#include <iostream>
#include <fstream>
#include <sstream>

using namespace std;

long reverse(long value) {
    string temp;
    stringstream stream;
    stream << value;
    stream >> temp;
    string rev = string(temp.rbegin(), temp.rend());
    return stol(rev);
}

int main(int argc, char *argv[]) {
    ifstream stream(argv[1]);
    string line;
    long num, i, rev;
    while (getline(stream, line)) {
        // Do something with the line
        num = stoi(line);
        rev = reverse(num);
        i = 0;
        while (num != rev) {
            num += rev;
            rev = reverse(num);
            i++;
        }
        cout << i << " " << num << "\n";
    }
    return 0;
}