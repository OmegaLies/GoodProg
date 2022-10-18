# encoding: UTF-8

puts "Первое число:"
first_number = STDIN.gets.to_f
puts "Второе число:"
second_number = STDIN.gets.to_f
puts "Выберите операцию (+ - * /):"
operator = STDIN.gets.chomp


result =
  case operator
  when "+"
    first_number + second_number
  when "-"
    first_number - second_number
  when "*"
    first_number * second_number
  when "/"
    first_number / second_number
  else
    "Неверная операция"
  end

puts result
