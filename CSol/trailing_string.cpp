/*
 Challenge Description
 There are two strings: A and B. Print 1 if string B occurs at the end of string A. Otherwise, print 0.
 */


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
    string line, test_string, sub_string;
    vector<string> raw_input;
    int position;
    size_t found;
    while (getline(stream, line)) {
        raw_input = split(line, ',');
        test_string = raw_input[0];
        sub_string = raw_input[1];
        position = (int) (test_string.size() - sub_string.size());
        found = test_string.find(sub_string, position);
        cout << ((found != string::npos) ? 1:0) << endl;
    }
    return 0;
}