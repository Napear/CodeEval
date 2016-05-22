def make_change(remaining, dispersed = [])
  return dispersed if remaining < 0.01
  if remaining >= 100
    make_change(remaining-100, dispersed << 'ONE HUNDRED')
  elsif remaining >= 50
    make_change(remaining-50, dispersed << 'FIFTY')
  elsif remaining >= 20
    make_change(remaining-20, dispersed << 'TWENTY')
  elsif remaining >= 10
    make_change(remaining-10, dispersed << 'TEN')
  elsif remaining >= 5
    make_change(remaining-5, dispersed << 'FIVE')
  elsif remaining >= 2
    make_change(remaining-2, dispersed << 'TWO')
  elsif remaining >= 1
    make_change(remaining-1, dispersed << 'ONE')
  elsif remaining >= 0.5
    make_change(remaining-0.5, dispersed << 'HALF DOLLAR')
  elsif remaining >= 0.25
    make_change(remaining-0.25, dispersed << 'QUARTER')
  elsif remaining >= 0.1
    make_change(remaining-0.1, dispersed << 'DIME')
  elsif remaining >= 0.05
    make_change(remaining-0.05, dispersed << 'NICKEL')
  elsif remaining >= 0.01
    make_change(remaining-0.01, dispersed << 'PENNY')
  end
end

def give_change(price, paid)
  return 'ERROR' if price > paid
  return 'ZERO' if price == paid
  make_change(paid-price).join(',')
end

File.open(ARGV[0]).each_line do |line|
  price, paid= line.chomp.split(';').map { |x| x.to_f }
  puts give_change(price, paid)
end
