
File.open(ARGV[0]).each_line do |line|
  input, mapping = line.chomp.split(';').map(&:split)
  mapping.map!(&:to_i)
  input.size.times do |x|
    unless mapping.include? x+1
      mapping << x+1
      break
    end
  end
  output = Array.new(input.size)
  input.each_with_index do |value, i|
    j = mapping[i] - 1
    output[j] = value
  end
  puts output.join(' ')
end
