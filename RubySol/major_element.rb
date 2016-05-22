File.open(ARGV[0]).each_line do
  elements = gets.chomp.split(',')
  mid = elements.size/2.0
  count = Hash.new(0)
  elements.each { |x| count[x]+=1 }
  max = count.max_by { |k, v| v }
  puts max[1] > mid ? max[0]:'NONE'
  # puts "#{elements.size/2.0}:#{max[1]}"
end