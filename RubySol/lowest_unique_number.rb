File.open(ARGV[0]).each_line do |line|
  numbers = line.chomp.split.map(&:to_i)
  lowest_unique = 10
  index = 0
  numbers.each_with_index do |num, i|
    if numbers.count(num)==1 && num < lowest_unique
      lowest_unique = num
      index = i+1
    end
  end
  puts index
end
