def make_change(remaining, dispersed = [])
  return dispersed if remaining < 1
  if remaining >= 10000
    make_change(remaining-10000, dispersed << 'ONE HUNDRED')
  elsif remaining >= 5000
    make_change(remaining-5000, dispersed << 'FIFTY')
  elsif remaining >= 2000
    make_change(remaining-2000, dispersed << 'TWENTY')
  elsif remaining >= 1000
    make_change(remaining-1000, dispersed << 'TEN')
  elsif remaining >= 500
    make_change(remaining-500, dispersed << 'FIVE')
  elsif remaining >= 200
    make_change(remaining-200, dispersed << 'TWO')
  elsif remaining >= 100
    make_change(remaining-100, dispersed << 'ONE')
  elsif remaining >= 50
    make_change(remaining-50, dispersed << 'HALF DOLLAR')
  elsif remaining >= 25
    make_change(remaining-25, dispersed << 'QUARTER')
  elsif remaining >= 10
    make_change(remaining-10, dispersed << 'DIME')
  elsif remaining >= 5
    make_change(remaining-5, dispersed << 'NICKEL')
  elsif remaining >= 1
    make_change(remaining-1, dispersed << 'PENNY')
  end
end

def give_change(price, paid)
  return 'ERROR' if price > paid
  return 'ZERO' if price == paid
  make_change(paid-price).join(',')
end

def get_cents(value)
  dollars, cents = value.split('.')
  cents ||=0
  (dollars.to_i * 100) + cents.to_i
end

File.open(ARGV[0]).each_line do |line|
  price, paid= line.chomp.split(';').map { |x| get_cents(x) }
  puts give_change(price, paid)
end
