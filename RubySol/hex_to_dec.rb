File.open(ARGV[0]).each_line {|x| puts x.chomp.to_i(16)}
