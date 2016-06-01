def get_row(n)
  row = [1]
  n.times {|x| row << (row[x]*(n-x)/(x+1))}
  row
end


File.open(ARGV[0]).each_line do |line|
  n = line.chomp.to_i
  triangle = []
  n.times {|i| triangle << get_row(i)}
  puts triangle.flatten.join(' ')
end