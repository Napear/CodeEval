def trim(line)
  temp = line[0..40]
  raw = temp.split(' ')
  output = raw[0..raw.size-2].join(' ')
  output + '... <Read More>'
end

File.open(ARGV[0]).each_line do |line|
  input = line.chomp
  output = input.size >= 55 ? trim(input) : input
  puts output
end