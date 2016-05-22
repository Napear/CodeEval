track = []
File.open(ARGV[0]).each_line do |line|
  track << line.chomp
end
previous = nil
track.each do |line|
  if line.include? 'C'
    target = line.index 'C'
  else
    target = line.index '_'
  end
  if previous.nil? || target == previous
    line[target] = '|'
  elsif previous < target
    line[target] = "\\"
  else
    line[target] = '/'
  end
  previous = target
end
puts track