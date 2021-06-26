times = gets.to_i

all_numbers = []
anther = []

# all_numbersに全ての入力した数値を入れる
times.times do
  all_numbers.push(gets.chomp)
end

# 入力した4つの数値の縦をinput_numberに代入し、0の数が奇数かどうかを調べてantherに入れる
i = 0
while i < 4
  input_number = []
  all_numbers.size.times do |index|
    input_number.push(all_numbers[index][i])
  end
  count = input_number.select { |n| n == "1" }
  if count.size.odd?
    anther.push("1")
  else
    anther.push("0")
  end
  i += 1
end

puts anther.join('')