size = gets.to_i
table = []
free = []
anther = []

# tableに入力された値を全て入れる
size.times do
    table_row = gets.split(' ').map { |i| i.to_i }
    table_row.unshift(0)
    table_row.push(0)
    table.push(table_row)
end

(size + 2).times do
    free.push(0)
end

# tableの周りに0で囲む
table.push(free)
table.unshift(free)

# tableの文字を1つずつ左右、上下の順に大きいかを調べ大きければanterに入れる
# もう少し簡略化できそうですが、今の僕ではこれが限界
size.times do |index|
    i = 1
    while size >= i
        row_anther = ""
        if table[index + 1][i] > table[index + 1][i - 1] && table[index + 1][i] > table[index + 1][i + 1]
            row_anther = (table[index + 1][i]).to_i
            if row_anther > table[index][i] && row_anther > table[index + 2][i]
                anther.push(row_anther)
            end
        end
        i = i + 1
    end
    i = 1
end

# 標高を高い順に並び替える
puts anther.sort!.reverse!