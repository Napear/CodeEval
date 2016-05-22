File.open(ARGV[0]).each_line do |line|
  s = line.delete("^a-zA-Z").downcase
  count = Hash.new(0)
  s.each_char { |chr| count[chr] += 1 }
  beauty_value = 26
  beauty = 0
  count.values.sort.reverse.each do |x|
    beauty += (x*beauty_value)
    beauty_value -= 1
  end
  puts beauty
end
