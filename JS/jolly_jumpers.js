/**
 JOLLY JUMPERS
 CHALLENGE DESCRIPTION:

 Credits: Programming Challenges by Steven S. Skiena and Miguel A. Revilla

 A sequence of n > 0 integers is called a jolly jumper if the absolute values of the differences between successive elements take on all possible values 1 through n - 1. eg.
 1 4 2 3
 is a jolly jumper, because the absolute differences are 3, 2, and 1, respectively. The definition implies that any sequence of a single integer is a jolly jumper. Write a program to determine whether each of a number of sequences is a jolly jumper.

 https://www.codeeval.com/browse/43/
 */


var isJolly = function (diffArray) {
  for (var i = 1; i < diffArray.length; i++) {
    if (i !== diffArray[i - 1]) {
      return false;
    }
  }
  return true;
};

var fs = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
  if (line != "") {
    var values = line.trim().split(' ').map(Number);
    // if(values.length === 1) {
    //   console.log("Not jolly");
    //   return;
    // }
    var diffArray = [];
    for (var i = 0; i < values.length - 1; i++) {
      var value = Math.abs(values[i] - values[i + 1]);
      diffArray.push(value);
    }
    diffArray.sort(function (a, b) {
      return a - b;
    });
    if (isJolly(diffArray)) {
      console.log("Jolly")
    } else {
      console.log("Not jolly")
    }
  }
});