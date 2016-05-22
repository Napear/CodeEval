def add_coin(counter = 0, total = 0, value)
  # STDERR.puts "counter: #{counter}, total: #{total}, value: #{value}"
  return counter if total == value
  if total + 5 <= value
    add_coin(counter+1, total+5, value)
  elsif total + 3 <= value
    add_coin(counter+1, total+3, value)
  else
    add_coin(counter+1, total+1, value)
  end
end

File.open(ARGV[0]).each_line do |line|
  val = line.chomp.to_i
  puts add_coin(val).to_s
end
