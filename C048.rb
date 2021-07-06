input_line = gets.split(' ').map { |i| i.to_i }
anther = input_line[0]
price = 0
one_price = input_line[0]
waribiki = (1 - (input_line[1].to_f / 100))

# priceに1回の値段を代入、antherにその値段を足していく、one_priceにその時の値段を入れていく
while one_price > 0
  price = (one_price * waribiki).to_i
  anther += price
  one_price = price
end

puts anther