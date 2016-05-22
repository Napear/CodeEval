require 'prime'
File.open(ARGV[0]).each_line do |line|
  output = []
  (0..Math.log(line.chomp.to_i, 2).to_i).each do |x|
    val = (2**x)-1
    output << val if Prime.prime? val
  end
  puts output.join(', ')
end
