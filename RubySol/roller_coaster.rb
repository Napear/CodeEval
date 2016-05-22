File.open(ARGV[0]).each_line do |line|
  ctr = 0
  output = ''
  line.each_char do |char|
    is_alpha = (/[[:alpha:]]/ =~ char)
    if is_alpha
      ctr += 1
      if ctr % 2 ==0
        output += char.downcase
      else
        output += char.upcase
      end
    else
      output += char
    end
  end
  puts output
end