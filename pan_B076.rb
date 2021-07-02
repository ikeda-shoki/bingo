input = gets.split(' ').map { |i| i.to_i }

types = input[0]
times = input[1]

breads = []

# パンの初期値を設定
types.times do
  bread = {}
  input = gets.split(' ').map { |i| i.to_i }
  bread = { "price" => input[0], "stock" => input[1] }
  breads.push(bread)
end

# クエリの回数の実行
times.times do
  query = gets.split(' ')
  # 買うクエリの場合
  if query[0] == "buy"
    i = 0
    all_price = 0
    # 種類の数だけ購入金額を足していく、在庫がなければ終了させる
    while i < types
      buy_amount = query[i + 1].to_i
      if breads[i]["stock"] - buy_amount >= 0
        all_price += buy_amount * breads[i]["price"]
      else
        all_price = -1
        i = types - 1
      end
      i += 1
    end
    puts all_price.to_i
    # 購入金額が表示される場合のみ、在庫の数量を減らす
    if all_price > 0
      i = 0
      while i < types
        buy_amount = query[i + 1].to_i
        breads[i]["stock"] -= buy_amount
        i += 1
      end
    end
  # 作るクエリの場合
  elsif query[0] == "bake"
    i = 0
    while i < types
      breads[i]["stock"] += query[i + 1].to_i
      i += 1
    end
  end
end