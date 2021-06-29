table = {}
arufabet = ('a'..'z').to_a
i = 1

# 点数をつける
arufabet.size.times do |index|
    table.store(arufabet[index], i)
    i += 1
end

names = gets.split(' ')

anther_names = []
anther_names.push(names.join('').split(''))
anther_names.push(names.reverse.join('').split(''))


def check_number(name, table)
    amount = name.size
    numbers = []
    i = 0
    while i < amount
        number = table.find { |k,v| k == name[i] }
        numbers.push(number[1])
        i += 1
    end
    return numbers
end

numbers = []
numbers.push(check_number(anther_names[0], table))
numbers.push(check_number(anther_names[1], table))

anther = []

2.times do |index|
    u = numbers[index].size - 1
    while u > 0
        n = 0
        number = []
        while n < (numbers[index].size - 1)
            if numbers[index][n] + numbers[index][n + 1] > 101
                number.push((numbers[index][n] + numbers[index][n + 1]) - 101)
            else
                number.push(numbers[index][n] + numbers[index][n + 1])
            end
            n += 1
        end
        numbers[index] = number
        u -= 1
    end
end

puts numbers.max