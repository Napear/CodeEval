//
// Created by kevin on 2/2/16.
//
#include <string>

using namespace std;

int main(int argc, char const *argv[]) {
    for (int i = 1; i < 13; ++i) {
        for (int j = 1; j < 13; ++j) {
            printf("%4d", i * j);
        }
        printf("\n");
    }
	return 0;
}