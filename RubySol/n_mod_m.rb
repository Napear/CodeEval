File.open(ARGV[0]).each_line do |line|
  n,m = line.chomp.split(',').map(&:to_i)
  puts (n - (m*(n/m)))
end
