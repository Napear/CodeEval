File.open(ARGV[0]).each_line do |line|
  puts line.chomp.split(' ').sort{|x,y| y.size <=> x.size}[0]
end