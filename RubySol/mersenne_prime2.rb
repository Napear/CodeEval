File.open(ARGV[0]).each_line do |line|
  output = [3, 7, 31, 127]
  output.delete_if{|x| x > line.to_i}
  puts output.join(', ')
end
