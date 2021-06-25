size = gets.split(' ').map { |i| i.to_i }
front = []
side = []
anther = []
i = 0

front = gets.split(' ').map { |i| i.to_i}
side = gets.split(' ').map { |i| i.to_i}

# 縦と横の値を比べて値が小さい方をantherに入れれていく
while i < size[1]
  count = 0
  row_anther = []
  while count < size[0]
    hight = ""
    if side[i] <= front[count]
      hight = side[i]
    else
      hight = front[count]
    end
    row_anther.push(hight)
    count += 1
  end
  anther.push(row_anther.join(' '))
  i += 1
end

puts anther