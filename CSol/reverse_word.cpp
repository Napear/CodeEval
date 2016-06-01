#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
#include <algorithm>
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
  ifstream steam(argv[1]);
  string line, output;
  vector<string> input;
  int in_count;
  while (getline(steam, line)) {
    input = split(line, ' ');
    output = "";
    in_count = input.size();
    reverse(input.begin(), input.end());
    for (size_t i = 0; i < in_count; i++) {
      output += input[i];
      if (i!=(in_count-1)){
        output += " ";
      }
    }
    cout << output << endl;
  }
  return 0;
}
