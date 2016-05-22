File.open(ARGV[0]).each_line do |line|
  words = line.chomp.split
  words.each do |word|
    word[0] = word[0].capitalize
  end
  puts words.join(' ')
end
