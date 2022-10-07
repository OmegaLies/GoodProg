def inclination(num, form1, form2, form3)
  number %= 100
  return form3 if number in 5..20
  number %= 10
  return form1 if number == 1
  return form2 if number in 2..4
end

puts "Введите через пробел слово три формы слова (им. падеж, род. падеж, род падеж мн. числа):"
forms = STDIN.gets.chomp.split(' ')

puts "Введите число:"
number = STDIN.gets.to_i

result = inclination(number, forms[0], forms[1], forms[2])
puts "Вот вам #{number} #{result}!"
