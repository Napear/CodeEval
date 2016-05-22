File.open(ARGV[0]).each_line do |line|
  o, p, q, r = line.chomp.split.map(&:to_i)
  direction = ""
  if p < r
    direction += "N"
  elsif p > r
    direction += "S"
  end
  if o < q
    direction +="E"
  elsif o > q
    direction +="W"
  end

  direction = "here" if direction.empty?
  puts direction      
end
