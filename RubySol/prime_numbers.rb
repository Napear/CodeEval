require 'prime'
File.open(ARGV[0]).each_line {|x| puts Prime.take_while{|val| val < x.chomp.to_i}.join(',')}
