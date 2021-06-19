require 'active_support'
require 'active_support/core_ext'


size = gets.split(' ').map { |i| i.to_i }
row = 0
column = 0
anther = "No"
anther_s = []

while size[0] > row
  chokolate = gets.split(' ').map { |i| i.to_i }
  left = chokolate.deep_dup
  right = chokolate.deep_dup
  while size[1] > column + 1
    left_anther = left.shift(column + 1)
    right_anther = right.slice!(column + 1, size[1] - column + 1)
    if right_anther.sum == left_anther.sum
      anther = "Yes"
      string = ""
      left_count = left_anther.length
      right_count = right_anther.length
      string = ("A" * left_count) + ("B" * right_count)
      anther_s.push(string)
    end
    left = chokolate.deep_dup
    right = chokolate.deep_dup
    column += 1
  end
  column = 0
  row += 1
end

puts anther
puts anther_s