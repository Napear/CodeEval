File.open(ARGV[0]).each_line do |line|
  array = line.chomp.split
  i = array.pop.to_i
  puts array[-i]
end
