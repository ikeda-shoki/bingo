amount = gets.to_i
high = []
low = []
anther = ''

amount.times do
  height = gets.split(' ')
  # 調べたい身長以下と以上に分ける
  if height[0] == "ge"
    low.push(height[1].to_f)
  else
    high.push(height[1].to_f)
  end
end

# 以下の中の1番大きい数値と以上の中の1番大きい数値が答え
anther = "#{low.max} #{high.min}"

puts anther