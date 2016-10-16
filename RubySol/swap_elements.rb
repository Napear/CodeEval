File.open(ARGV[0]).each_line do |line|
  data, swaps = line.chomp.split(' : ')
  data = data.chomp.split(' ').map(&:to_i)
  swaps = swaps.chomp.split(', ').map{|x| x.split('-').map(&:to_i)}
  swaps.each do |swap|
    x,y = swap
    data[x], data[y] = data[y], data[x]
  end
  puts data.join(' ')
end