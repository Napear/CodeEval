=begin
STRING ROTATION
CHALLENGE DESCRIPTION:

You are given two strings. Determine if the second string is a rotation of the first string.
=end

File.open(ARGV[0]).each_line do |line|
  base, test = line.chomp.split(',')
  match = false
  mod = test.size
  mod.times do |i|
    rotation = ''
    (i...i+mod).each do |j|
      rotation += test[j%mod]
    end
    if rotation == base
      match = true
      break
    end
  end
  puts match ? 'True':'False'
end