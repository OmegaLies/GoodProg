def inclination(num, form1, form2, form3)
  num = num % 100
  if num in 5..20
    return form3
  end
  num = num % 10
  if num == 1
    form1
  elsif num in 2..4
    form2
  else
    form3
  end
end

puts "Введите через пробел слово три формы слова (им. падеж, род. падеж, род падеж мн. числа):"
forms = STDIN.gets.chomp.split(' ')

puts "Введите число:"
number = STDIN.gets.to_i

result = inclination(number, forms[0], forms[1], forms[2])
puts "Вот вам #{number} #{result}!"
