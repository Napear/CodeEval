File.open(ARGV[0]).each_line do |line|
  words = line.chomp.split(' ')
  words.map!{|word| word[-1]+word[1,word.size-2]+word[0]}
  puts words.join(' ')
end