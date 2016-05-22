//
// Created by kevin on 3/10/16.
//

#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, char const *argv[])
{
    ifstream stream(argv[1]);
    string line;

    while (getline(stream, line)) {
        string first, second, trump;
        scanf(line, "%s %s | %s", &first, &second, &trump);
        cout << first << second << trump;
    }
	return 0;
}
