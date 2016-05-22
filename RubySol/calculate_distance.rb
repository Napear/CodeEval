require "scanf"

File.open(ARGV[0]).each_line do |line|
  x1, y1, x2, y2 = line.scanf("\(%d, %d\) \(%d, %d\)")
  val  = Math.sqrt((x2-x1)**2 +(y2-y1)**2)
  puts val.to_i
end
