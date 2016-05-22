def check_happy (value, list=[])
  step = value.to_s
             .split('')
             .map { |x| x.to_i }
             .inject(0) { |m, x| m+x**2 }
  return true if step == 1
  return false if list.include? step
  check_happy(step, list << step)
end


File.open(ARGV[0]).each_line do |line|
  puts check_happy(line.chomp.to_i) ? 1 : 0
end