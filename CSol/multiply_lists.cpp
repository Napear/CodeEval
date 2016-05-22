#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>

using namespace std;

vector<string> split(string str, char delimiter) {
    vector<string> internal;
    stringstream ss(str); // Turn the string into a stream.
    string tok;

    while (getline(ss, tok, delimiter)) {
        internal.push_back(tok);
    }

    return internal;
}

int main(int argc, char const *argv[]) {
    ifstream stream(argv[1]);
    vector<string> raw, first, second;
    string line, trimmed1, trimmed2, output;
    while (getline(stream, line)) {
        raw = split(line, '|');
        output = "";
        trimmed1 = raw[0].substr(0, raw[0].length() - 1);
        trimmed2 = raw[1].substr(1, raw[0].length() + 1);
        first = split(trimmed1, ' ');
        second = split(trimmed2, ' ');
        for (int i = 0; i < first.size(); ++i) {
            int temp = stoi(first[i]) * stoi(second[i]);
            output += to_string(temp);
            if (i < first.size() - 1) {
                output += " ";
            }
        }
        cout << output << endl;
    }
    return 0;
}