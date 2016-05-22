#include <iostream>
#include <fstream>
#include <sstream>

using namespace std;

class masker {
    string text;
    string mask;

    masker();

public:
    void print();

    masker(string input);
};

masker::masker(string input) {
    istringstream iss(input);
    iss >> text >> mask;
    for (int i = 0; i < text.size(); ++i) {
        if (mask[i] == '1') {
            text[i] = toupper(text[i]);
        }
    }
}

void masker::print() {
    cout << text << "\n";
}

int main(int argc, char *argv[]) {
    ifstream stream(argv[1]);
    string line;
    while (getline(stream, line)) {
        // Do something with the line
        masker temp(line);
        temp.print();
    }
    return 0;
}