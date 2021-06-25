initial_value = gets.split(' ').map { |i| i.to_i }
anther = []

initial_value[0].times do
  image = gets.split(' ').map { |i| i.to_i }
  image_anther = []
  initial_value[1].times do |index|
    if image[index] >= 128
      image_anther.push(1)
    else
      image_anther.push(0)
    end
  end
  anther.push(image_anther.join(' '))
end

puts anther