bingoSize = gets.to_i
bingoCard = []
bingo = ""

# bingoカードのワードを全て入れる
bingoSize.times do
  bingoCard.push(gets.split(' '))
end

wordCount = gets.to_i

# 出たワードに印をつける
wordCount.times do
  word = gets.to_s.chomp
  bingoSize.times do |index|
    bingoCard[index].map! { |x| x == word ? "OPEN" : x}
  end
end

def bingo_row(index, bingoCard)
  bingoCard[index].all? { |i| i == "OPEN"}
end

def bingo_column(index, bingoSize, bingoCard)
  num = 0
  column = []
  # columnにビンゴカードの縦に印がついているかを代入する
  while(num < bingoSize)
    if(bingoCard[num][index] == "OPEN")
      column.push("OPEN")
    else
      column.push("NO")
    end
    num += 1
  end
  column.all? { |i| i == "OPEN"}
end

#bingo_diagonal処理は、左上からと右上でまとめて書くことができそうだったが、今の自分では簡潔に2つの処理をまとめて書くことが難しかった為、分けて書いています。
def bingo_diagonal_left(bingoSize, bingoCard)
  num = 0
  diagonal = []
  # diagonalにビンゴカードの左上から斜めに印がついているかを代入する
  bingoSize.times do |index|
    if bingoCard[index][num] == "OPEN"
      diagonal.push("OPEN")
    else
      diagonal.push("NO")
    end
    num += 1
  end
  diagonal.all? { |i| i == "OPEN"}
end

def bingo_diagonal_right(bingoSize, bingoCard)
  num = bingoSize - 1
  diagonal = []
  # diagonalにビンゴカードの右上から斜めに印がついているかを代入する
  bingoSize.times do |index|
    if bingoCard[index][num] == "OPEN"
      diagonal.push("OPEN")
    else
      diagonal.push("NO")
    end
    num -= 1
  end
  diagonal.all? { |i| i == "OPEN"}
end

#斜めビンゴ処理の方が縦横の全てのビンゴ処理より、処理数が少なかった為に先に記載
#斜めがビンゴしているか確認する
if bingo_diagonal_left(bingoSize, bingoCard)
  bingo = "yes"
elsif bingo_diagonal_right(bingoSize, bingoCard)
  bingo = "yes"
else
  bingo = "no"
end

#縦、横がビンゴしているかを確認する
if bingo == "no"
  bingoSize.times do |index|
    if bingo_row(index, bingoCard)
      bingo = "yes"
      break
    elsif bingo_column(index, bingoSize, bingoCard)
      bingo = "yes"
      break
    else
      bingo = "no"
    end
  end
end

p bingo