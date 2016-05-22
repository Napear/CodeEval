NUMBERS = {'nine' => '9','eight' => '8','seven' => '7','six' => '6','five' => '5','four' => '4','three' => '3','two' => '2','one' => '1','zero' => '0'}

File.open(ARGV[0]).each_line do |line|
  input = line.chomp.split(';')
  ouput = ""
  input.each{|num| ouput+= NUMBERS[num]}
  puts ouput
end
