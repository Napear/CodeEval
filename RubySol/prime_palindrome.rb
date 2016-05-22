require 'prime'
max = 0

Prime.each(1000) do |num|
  if num.to_s == num.to_s.reverse
    max = num
  end
end

puts max
