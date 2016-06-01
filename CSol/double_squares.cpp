/*DOUBLE SQUARES
CHALLENGE DESCRIPTION:

Credits: This challenge appeared in the Facebook Hacker Cup 2011.
A double-square number is an integer X which can be expressed as the sum of two perfect squares. For example, 10 is a double-square because 10 = 3^2 + 1^2. Your task in this problem is, given X, determine the number of ways in which it can be written as the sum of two squares.

For example, 10 can only be written as 3^2 + 1^2 (we don't count 1^2 + 3^2 as being different). On the other hand, 25 can be written as 5^2 + 0^2 or as 4^2 + 3^2.
NOTE: Do NOT attempt a brute force approach. It will not work. The following constraints hold:
0 <= X <= 2147483647
1 <= N <= 100
*/

#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char const *argv[])
{
    ifstream stream(argv[1]);
    string line;
    int x;
    while (getline(stream, line)) {
        x = stoi(line);

    }
	return 0;
}