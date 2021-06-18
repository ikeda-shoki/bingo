# paiza タクシーの問題

line = gets.split(' ').map { |i| i.to_i }
amount = line[0]
length = line[1]
price = []
anther = []
i = 0

# タクシーの数だけタクシー料金の計算
while amount > i
  line = gets.split(' ').map { |i| i.to_i }
  taxi_price = line[1]
  taxi_length = line[0]
  # 初乗り距離未満の距離の場合
  if length < taxi_length
    price.push(taxi_price)
  else
    # 初乗り距離以上の時、走行場所まで追加距離と追加料金を足していく
    while length >= taxi_length
        taxi_price += line[3]
        taxi_length += line[2]
    end
    price.push(taxi_price)
  end
  i += 1
end

# タクシーの種類が2つの場合は最大と最小でどちらの値も使う為、下記の書き方にしました
if amount < 2
  puts price.join(' ')
else
  min_price = price.min
  max_price = price.max
  anther.push(min_price, max_price)
  puts anther.join(' ')
end