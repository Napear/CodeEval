//
// Created by kevin on 2/6/16.
//
#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char const *argv[]) {
    ifstream stream(argv[1]);
    string line, output;
    int x, y, n;
    bool fizz, buzz;
    while (getline(stream, line)) {
        sscanf(line.c_str(), "%d %d %d", &x, &y, &n);
        output = "";
        for (int i = 1; i <= n; ++i) {
            fizz = i % x == 0;
            buzz = i % y == 0;
            if (fizz) {
                output += "F";
            }
            if (buzz) {
                output += "B";
            }
            if (!(fizz || buzz)) {
                output += to_string(i);
            }
            if (i == n) {
                output += '\n';
            } else {
                output += " ";
            }


        }
        cout << output;
    }
}
