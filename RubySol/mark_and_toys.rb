=begin
Mark and Jane are very happy after having their first kid. Their son is very fond of toys, so Mark wants to buy some.
There are  N different toys lying in front of him, tagged with their prices, but he has only $K . He wants to maximize
the number of toys he buys with this money.
Now, you are Mark's best friend and have to help him buy as many toys as possible.

Input Format
The first line contains two integers, N and K, followed by a line containing N space separated integers indicating the
products' prices.

Output Format
An integer that denotes maximum number of toys Mark can buy for his son.
=end

# prices must be sorted in ascending order for this to work
def count_toys(money, prices, count = 0)
  price = prices.shift
  return count if (price.nil? || money < price)
  count_toys(money-price, prices, count+1)
end

N, K = gets.chomp.split(' ').map(&:to_i)
prices = gets.chomp.split(' ').map(&:to_i).sort

puts count_toys(K, prices)