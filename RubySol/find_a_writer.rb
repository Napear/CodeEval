File.open(ARGV[0]).each_line do |line|
  cipher, key = line.chomp.split('|')
  key = key.split.map { |e| e.to_i - 1 }
  output = ""
  key.each {|x| output += cipher[x]}
  puts output
end
