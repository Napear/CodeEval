//
// Created by Kevin J. Harris on 5/23/16.
//

#ifndef CODEEVAL_CODEEVALHELPER_H
#define CODEEVAL_CODEEVALHELPER_H

#include <vector>
#include <sstream>
#include <iostream>

std::vector<std::string> split(std::string str, char delimiter) {
    std::vector<std::string> internal;
    std::stringstream ss(str); // Turn the std::string into a stream.
    std::string tok;

    while (getline(ss, tok, delimiter)) {
        internal.push_back(tok);
    }

    return internal;
}
#endif //CODEEVAL_CODEEVALHELPER_H
