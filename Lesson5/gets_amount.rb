# Получаем первое число с ввода
puts "Введите число 1:"
num1 = gets.encode("UTF-8").chomp.to_i

# Получаем второе число с ввода
puts "Введите число 2:"
num2 = gets.encode("UTF-8").chomp.to_i

# Получаем третье число с ввода
puts "Введите число 3:"
num3 = gets.encode("UTF-8").chomp.to_i

puts (num1 + num2 + num3) / 3