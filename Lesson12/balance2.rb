def balance(rate, rubles, dollars)
  dollars_to_rubles = (dollars * rate).round(2)
  if (rubles - dollars_to_rubles).abs <= 0.01 * rate
    [-1 , true]
  elsif rubles > dollars_to_rubles
    sell = rubles - (rubles + dollars_to_rubles) / 2
    [sell.round(2), true]
  else
    sell = dollars_to_rubles - (rubles + dollars_to_rubles) / 2
    [(sell / rate).round(2), false]
  end
end

# Получаем основные значения со ввода
puts "Курс доллара:"
input_rate = gets.to_f.round(2)
puts "Сколько у вас рублей?"
input_rubles = gets.to_f.round(2)
puts "Сколько у вас долларов?"
input_dollars = gets.to_f.round(2)

result = balance(input_rate, input_rubles, input_dollars)
output = "Вам нужно продать #{result[0]}"
if result[0] == -1
  output = "Ваш портфель сбалансирован!"
elsif result[1]
  output += "Р"
else
  output += "$"
end

puts output
