require 'json'

File.open(ARGV[0]).each_line do |line|
  unless line.chomp == ''
    menu_hash = JSON.parse(line)
    sum = 0
    menu_hash['menu']['items'].each do |item|
      if item
        sum += item['id'].to_i unless item['label'].nil?
      end
    end
    puts sum
  end
end