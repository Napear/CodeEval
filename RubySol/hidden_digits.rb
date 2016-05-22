File.open(ARGV[0]).each_line do |line|
  input = line.chomp
  values = []
  input.each_char do |char|
    val = char.ord
    found = false
    case val
      when 48..57
        val = val - 48
        found = true
      when 97..106
        val = val - 97
        found = true
    end
    values << val if found
  end
  if values.empty?
    output = 'NONE'
  else
    output = values.join('')
  end
  puts output
end