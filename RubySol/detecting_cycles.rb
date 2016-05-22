def find_cycle(list)
  output = []
  (list.size/2).times do |i|
    sub1 = list[0..i]
    sub2 = list[i+1..i+1+sub1.size]
    if sub1 == sub2
      output = sub1
      break
    end
  end
  output
end

File.open(ARGV[0]).each_line do |line|
  input = line.chomp.split(' ').map { |x| x.to_i }
  cycle = []
  (input.size-1).times do |i|
    cycle = find_cycle input[i, input.size]
    break unless cycle.empty?
  end
  puts cycle.uniq.join ' '
end