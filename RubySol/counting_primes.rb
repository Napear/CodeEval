require 'prime'

File.open(ARGV[0]).each_line do |line|
  min,max = line.chomp.split(',').map(&:to_i)
  count = 0
  (min..max).each {|x| count += 1 if x.prime?}
  puts count
end