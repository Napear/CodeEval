File.open(ARGV[0]).each_line do |line|
  first, second = line.chomp.split(';').map{|x| x.split(',').map(&:to_i)}
  puts (first & second).join(',')
end
