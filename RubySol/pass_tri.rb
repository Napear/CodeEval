# Read file into a 2D array structure
begin
  triangle = File.open(ARGV[0]).map do |line|
    line.chomp.split(' ').map(&:to_i)
  end
end

row_index = triangle.size-2
# Add largest value from each pair to the node above them to find the
# max path from the bottom up
triangle.reverse.each_with_index do |row, i|
  row.each_index do |j|
    break if j == row.size-1
    triangle[row_index-i][j] += row[j..j+1].max
  end
end

puts triangle[0][0]