File.open(ARGV[0]).each_line do |line|
  data = line.chomp.split(',')
  words = []
  numbers = []
  data.each do |item|
    if item.to_i == 0 && !(item.ord == 48)
      words << item
    else
      numbers << item
    end
  end
  if numbers.empty? || words.empty?
    output = line
  else
    output = "#{words.join(',')}|#{numbers.join(',')}"
  end
  puts output
end