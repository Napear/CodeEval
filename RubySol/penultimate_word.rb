File.open(ARGV[0]).each_line do |line|
  puts line.chomp.split(' ')[-2]
end