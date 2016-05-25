//
// Created by Kevin J. Harris on 5/23/16.
//

#import <iostream>
#import <fstream>
#include <vector>
#include <sstream>

using namespace std;

std::vector<std::string> split(std::string str, char delimiter) {
    std::vector<std::string> internal;
    std::stringstream ss(str); // Turn the std::string into a stream.
    std::string tok;

    while (getline(ss, tok, delimiter)) {
        internal.push_back(tok);
    }

    return internal;
}

int main(int argc, char const *argv[]) {
    ifstream stream(argv[1]);
    string line, output;
    int price, paid, remaining;
    while (getline(stream, line)) {
        output = "";
        vector<string> raw_num = split(line, ';');
        price = stof(raw_num[0]) * 100;
        paid = stof(raw_num[1]) * 100;
        if (paid <= price) {
            if (paid < price) {
                output = "ERROR";
            } else {
                output = "ZERO";
            }
        } else {
            remaining = paid - price;
            while (remaining >= 1) {
                if (remaining >= 10000) {
                    remaining -= 10000;
                    output += "ONE HUNDRED";
                } else if (remaining >= 5000) {
                    remaining -= 5000;
                    output += "FIFTY";
                } else if (remaining >= 2000) {
                    remaining -= 2000;
                    output += "TWENTY";
                } else if (remaining >= 1000) {
                    remaining -= 1000;
                    output += "TEN";
                } else if (remaining >= 500) {
                    remaining -= 500;
                    output += "FIVE";
                } else if (remaining >= 200) {
                    remaining -= 200;
                    output += "TWO";
                } else if (remaining >= 100) {
                    remaining -= 100;
                    output += "ONE";
                } else if (remaining >= 50) {
                    remaining -= 50;
                    output += "HALF DOLLAR";
                } else if (remaining >= 25) {
                    remaining -= 25;
                    output += "QUARTER";
                } else if (remaining >= 10) {
                    remaining -= 10;
                    output += "DIME";
                } else if (remaining >= 5) {
                    remaining -= 5;
                    output += "NICKEL";
                } else if (remaining >= 1) {
                    remaining -= 1;
                    output += "PENNY";
                }

                if (remaining >= 1) {
                    output += ",";
                }
            }
        } // END IF PRICE VS PAID CHECK
        cout << output << endl;
    }
    return 0;
}