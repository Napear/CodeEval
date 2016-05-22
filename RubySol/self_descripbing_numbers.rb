class String
  def self_describing
    self.size.times {|i| return 0 unless self[i].to_i == self.count(i.to_s)}
    return 1
  end
end

File.open(ARGV[0]).each_line do |line|
  puts line.self_describing
end
