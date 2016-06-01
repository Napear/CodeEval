#include <iostream>
using namespace std;

int main(int argc, char const *argv[]) {
  int test = 1;
  string output;
  if (*(char *) & test == 1) {
    output = "LittleEndian";
  } else {
    output = "BigEndian";
  }
  cout << output << endl;
  return 0;
}
