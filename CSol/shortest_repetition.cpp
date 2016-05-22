//
// Created by Kevin J. Harris on 5/22/16.
//

#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, char const *argv[])
{
    ifstream stream(argv[1]);
    string line, comp1, comp2;
    long len;
    while (getline(stream, line)) {
        len = line.length();
        for (int i = 1; i <= len / 2; ++i) {
            comp1 = line.substr(0, i);
            long offset = comp1.length();
            comp2 = line.substr(offset, i);
            if (comp1 == comp2) {
                len = offset;
                break;
            }
        }
        cout << len << endl;
    }
	return 0;
}