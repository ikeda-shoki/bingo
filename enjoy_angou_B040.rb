input = gets.split(' ')
times = input[0].to_i
alufabet = ("a".."z").to_a
replacement = input[1].split('')

cryptography = gets.split(' ')

anther = []

# 単語ごとに置換していく
cryptography.size.times do |index|
  i = 0
  word = cryptography[index].split('')
  chenge_word = word
  anther_word = ""
  # 指定の置換の回数置換を行う
  while i < times
    # 1文字ごとに置換の位置を調べ、アルファベット順にanther_wordに置き換えて代入していく
    word.size.times do |index|
      position = replacement.index(chenge_word[index])
      anther_word = anther_word + alufabet[position]
    end
    # 並び替え終わった単語をchenge_wordに入れ直し、再度繰り返していく
    chenge_word = anther_word
    anther_word = ""
    i += 1
  end
  # 完全に並び替え終わった単語をanterに入れていく
  anther.push(chenge_word)
end

puts anther.join(' ')
