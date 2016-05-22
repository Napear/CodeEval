begin
  File.open(ARGV[0]).each_line do |line|
    input = line.chomp.split(' ')
    input.reverse!
    puts input.join(' ')
  end
end