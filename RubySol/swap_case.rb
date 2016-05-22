File.open(ARGV[0]).each_line do |line|
  ouput = ""
  line.each_char do |x|
    if x.upcase == x
      ouput += x.downcase
    else
      ouput += x.upcase
    end
  end
  puts ouput
end
