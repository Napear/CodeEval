File.open(ARGV[0]).each_line do |line|
  input = line.chomp.split(' ')
  output = []
  (input.size/2.0).ceil.times do
    output << input.pop
    input.pop
  end
  puts output.join(' ')
end