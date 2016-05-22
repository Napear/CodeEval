File.open(ARGV[0]).each_line do |line|
  string, bad_chars = line.chomp.split(', ')
  puts string.tr(bad_chars, '')
end