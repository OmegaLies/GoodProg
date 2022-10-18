# encoding: UTF-8

puts "Первое число:"
first_number = STDIN.gets.to_i
puts "Второе число:"
second_number = STDIN.gets.to_i
puts "Выберите операцию (+ - * /):"
operator = STDIN.gets.chomp

puts "Получим:"
result =
  case operator
  when "+"
    first_number + second_number
  when "-"
    first_number - second_number
  when "*"
    first_number * second_number
  when "/"
    begin
      first_number / second_number
    rescue
      "На ноль делить нельзя"
    end
  else
    "Неверная операция"
  end

puts result
