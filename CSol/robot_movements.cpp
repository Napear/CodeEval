//
// Created by kevin on 1/29/16.
//

#include <iostream>
#include <queue>

using namespace std;

class node {
    queue<node> adj;
    node();
public:
    bool visited;
    string key;
    node(string name);
    int * next(); //return next unvisited adj node

};

int main(int argc, char *argv[]) {

    return 0;
}