def balance(rate, rubles, dollars)
  dollars_to_rubles = (dollars * rate).round(2)
  if (rubles - dollars_to_rubles).abs <= 0.01 * rate
    res = "Ваш портфель сбалансирован!"
  elsif rubles > dollars_to_rubles
    sell = rubles - (rubles + dollars_to_rubles) / 2
    res = "Вам нужно продать #{sell.round(2)}Р"
  else
    sell = dollars_to_rubles - (rubles + dollars_to_rubles) / 2
    res = "Вам нужно продать #{(sell / rate).round(2)}$"
  end
  return res
end

# Получаем основные значения со ввода
puts "Курс доллара:"
input_rate = gets.to_f.round(2)
puts "Сколько у вас рублей?"
input_rubles = gets.to_f.round(2)
puts "Сколько у вас долларов?"
input_dollars = gets.to_f.round(2)

puts balance(input_rate, input_rubles, input_dollars)
