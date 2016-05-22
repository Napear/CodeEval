VALUES = %w(2 3 4 5 6 7 8 9 1 J Q K A)

def get_value(card)
  VALUES.index(card[0])
end

def is_trump (card, suit)
  card[1]==suit
end

begin
  File.open(ARGV[0]).each_line do |line|
    first, second, pipe, trump = line.chomp.split(' ')
    output = ''
    first_is_trump = is_trump(first, trump)
    second_is_trump = is_trump(second, trump)
    has_trump = (first_is_trump|| second_is_trump) && !(first_is_trump&&second_is_trump)

    unless has_trump
      output += first + ' ' if get_value(first) >= get_value(second)
      output += second if get_value(second) >= get_value(first)
    else
      output = first if first_is_trump
      output = second if second_is_trump
    end
    puts output.chomp
  end
end
