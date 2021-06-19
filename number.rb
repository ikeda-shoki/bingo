# numbers = readlines
# amount = numbers.length
# i = 0

# while i < amount
#   number = numbers[i].split(' ')
#   number_i = number.map { |n| n.to_i }
#   sumNumber = number_i.inject(:+)
#   answer = sumNumber.to_s.length
#   p answer
#   i += 1
# end
anther = ""

judge = [
  "太朗の勝ち",
  "花子の勝ち",
  "あいこ"
]

index = [
  [3, 1, 2],
  [2, 3, 1],
  [1, 2, 3]
]

i = index[gets.to_i - 1][gets.to_i - 1]
anther = judge[i - 1]

puts anther
