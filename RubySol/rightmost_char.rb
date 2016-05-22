File.open(ARGV[0]).each_line do |line|
  text, char = line.chomp.split(',')
  index = text.reverse.index(char)
  unless (index.nil?)
    puts ((text.size - 1) - index)
  else
    puts -1
  end
end
