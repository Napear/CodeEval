=begin
Consider a matrix with n rows and m columns, where each cell contains either a 0 or a 1 and any cell containing a 1
is called a filled cell. Two cells are said to be connected if they are adjacent to each other horizontally,
vertically, or diagonally; in other words, cell [i][j] is connected to cells [i-1][j-1], [i-1][j], [i][j-1],
[i+1][j-1], [i-1][j+1], [i+1][j+1], [i][j+1], and [i+1][j], provided that the location exists in the matrix for that
[i][j].

If one or more filled cells are also connected, they form a region. Note that each cell in a region is connected to
at least one other cell in the region but is not necessarily directly connected to all the other cells in the region.

Task
Given an nxm matrix, find and print the number of cells in the largest region in the matrix. Note that there may be
more than one region in the matrix.

Input Format

The first line contains an integer, n, denoting the number of rows in the matrix.
The second line contains an integer, m, denoting the number of columns in the matrix.
Each line i of the n subsequent lines contains m space-separated integers describing the respective values filling each row in the matrix.

Constraints
0<n,m<10
Output Format
Print the number of cells in the largest region in the given matrix.
=end

class Cell
  attr_reader :filled, :adjacent, :visited

  def initialize (adjacent, filled)
    @adjacent = adjacent
    @filled = filled == '1'
    @visited = false
  end

  def visited
    @visited = true
  end
end

n, m = gets.chomp.to_i, gets.chomp.to_i

grid = []
n.times{grid << gets.chomp.split(' ')}

