def inclination(num, form1, form2, form3)
  res = ""
  num = num % 100
  if num in 5..20
    res = form3
  else
    num = num % 10
    if num == 1
      res = form1
    elsif num in 2..4
      res = form2
    else
      res = form3
    end
  end
  return res
end

puts "Введите через пробел слово три формы слова (им. падеж, род. падеж, род падеж мн. числа):"
forms = STDIN.gets.chomp.split(' ')

puts "Введите число:"
number = STDIN.gets.chomp.to_i

result = inclination(number, forms[0], forms[1], forms[2])
puts "Вот вам #{number} #{result}!"
