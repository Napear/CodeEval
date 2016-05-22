//
// Created by kevin on 1/28/16.
//

#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <algorithm>

using namespace std;

void checkMax(int &max, int sum) {
    if (max < sum) {
        max = sum;
    }
}

int main(int argc, char *argv[]) {
    ifstream stream(argv[1]);
    string line, num;
    int n, max, sum;
    while (getline(stream, line)) {
        // Do something with the line
        vector<int> list;
        istringstream iss(line);
        for (int i = 0; getline(iss, num, ','); i++) {
            list.push_back(stoi(num));
        }
        n = (int) list.size();
        vector<int> min = list;
        sort(min.begin(), min.end());
        max = min.front();
        for (int i = 0; i < n; ++i) {
            sum = 0;
            for (int j = i; j < n; ++j) {
                sum += list.at(j);
                checkMax(max, sum);
            }
        }
        cout << max << "\n";
    }
    return 0;
}
