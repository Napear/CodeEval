MORSE_MAP = {".-"=>"a", "-..."=>"b", "-.-."=>"c", "-.."=>"d", "."=>"e",
            "..-."=>"f", "--."=>"g", "...."=>"h", ".."=>"i", ".---"=>"j",
            "-.-"=>"k", ".-.."=>"l", "--"=>"m", "-."=>"n", "---"=>"o",
            ".--."=>"p", "--.-"=>"q", ".-."=>"r", "..."=>"s", "-"=>"t",
            "..-"=>"u", "...-"=>"v", ".--"=>"w", "-..-"=>"x", "-.--"=>"y",
            "--.."=>"z", " "=>" ", ".----"=>"1", "..---"=>"2", "...--"=>"3",
            "....-"=>"4", "....."=>"5", "-...."=>"6", "--..."=>"7",
            "---.."=>"8", "----."=>"9", "-----"=>"0"}

File.open(ARGV[0]).each_line do |line|
  raw = line.chomp
  text = raw.split(' ').map{|x| MORSE_MAP[x]}
  raw_char = raw.split('').map(&:ord)
  output = ""
  raw_char.each_with_index do |char, i|
    if (char == 32)
      if (raw_char[i-1] == 32)
        output += ' '
      else
        output += text.shift
      end
    end
  end

  puts (output + text.join('')).upcase
end
