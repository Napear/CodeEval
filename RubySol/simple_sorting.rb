File.open(ARGV[0]).each_line do |line|
  array = line.chomp.split.map(&:to_f).sort
  puts array.map{|x| format("%.3f",x)}.join(' ')
end
