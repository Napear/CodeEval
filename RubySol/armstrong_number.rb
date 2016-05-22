File.open(ARGV[0]).each_line do |line|
  val = line.chomp.to_i
  pow = line.chomp.size
  sum = line.chomp.split('').map(&:to_i).inject(0){|memo, n| memo += n**pow}
  puts (val==sum).to_s.capitalize
end
