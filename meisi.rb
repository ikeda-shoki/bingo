amount = gets.split(' ').map { |i| i.to_i }
card = []
card_number = amount[0] * 2
i = 0

while i < amount[1]
  (amount[0] * 2).times do |index|
    # 名刺フォルダーの裏表の数字を入れていく
    card.push(card_number - index)
  end

  # 名刺が指定枚数以上入れば終了させる為
  i = card.count

  # カード番号を続きから入力していく
  card_number = card_number + amount[0] * 2
end

puts card[amount[1] - 1]