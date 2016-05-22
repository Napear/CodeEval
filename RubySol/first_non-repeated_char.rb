File.open(ARGV[0]).each_line do |line|
  line.each_char do |x|
    if line.count(x) == 1
      puts x
      break
    end
  end
end
