numbers = readlines
amount = numbers.length
i = 0

while i < amount
  number = numbers[i].split(' ')
  number_i = number.map { |n| n.to_i }
  sumNumber = number_i.inject(:+)
  answer = sumNumber.to_s.length
  p answer
  i += 1
end
