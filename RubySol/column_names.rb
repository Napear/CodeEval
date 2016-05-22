ALPH = ('A'..'Z').to_a
File.open(ARGV[0]).each_line do |line|
  # Change to zero based indexing and convert to base 26
  base_26 = (line.chomp.to_i-1).to_s(26)
  output = ''
  # Convert digits to letter equivalents
  base_26.size.times do |i|
    value = base_26[i].to_i(26)
    value -= 1 unless i == base_26.size-1
    output += ALPH[value]
  end
  puts output
end