/**
 * https://www.codeeval.com/browse/180/
 * CHALLENGE DESCRIPTION:

 In chess, the knight moves to any of the closest squares that are not on the same rank, file, or diagonal. 
 Thus the move is in the “L” form: two squares vertically and one square horizontally, or two squares 
 horizontally and one square vertically:
 Your task is to find all possible positions for the next move of the knight on the empty chessboard.
 INPUT SAMPLE:
 The first argument is a filename that contains positions of the knight on the chessboard in the CN form, where:
 C is a letter from “a” to “h” and denotes a column.
 N is a number from 1 to 8 and denotes a row.
 Each position is indicated in a new line.
 */
var fs = require("fs");
//provides modifiers for left up/down and right up/down
const DIRECTIONS = [[1, 1], [1, -1], [-1, 1], [-1, -1]];

function move(position, x, y) {
  return [position[0] + x, position[1] + y];
}

function validMove(position, x, y) {
  var testMove = move(position, x, y);
  var output;
  var onRow = (testMove[0] >= 97 && testMove[0] <= 104);
  var onColumn = (testMove[1] >= 1 && testMove[1] <= 8);
  if (onRow && onColumn) {
    output = testMove;
  }
  return output;
}

function parsePosition(line) {
  var raw = line.split('');
  var position = [];
  position[0] = raw[0].charCodeAt(0);
  position[1] = parseInt(raw[1]);
  return position;
}

function printMove(moveToPrint) {
  return String.fromCharCode(moveToPrint[0]) + moveToPrint[1];
}

function addIfValid(validMove, moves) {
  if (validMove) {
    moves.push(printMove(validMove));
  }
}

fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
  var moves = [];
  if (line !== "") {
    var position = parsePosition(line);
    for (var i = 0; i < DIRECTIONS.length; i++) {
      var dir = DIRECTIONS[i];
      addIfValid(validMove(position, 2 * dir[0], dir[1]), moves); // wide moves
      addIfValid(validMove(position, dir[0], 2 * dir[1]), moves); // tall moves
    }
    console.log(moves.sort().join(' '));
  }
});
