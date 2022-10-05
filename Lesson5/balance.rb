# Получаем основные значения со ввода
puts "Курс доллара:"
rate = gets.to_f.round(2)
puts "Сколько у вас рублей?"
rubles = gets.to_f.round(2)
puts "Сколько у вас долларов?"
dollars = gets.to_f.round(2)

# Переводим доллары в рубли и проверяем условие баланса в центах
dollars_to_rubles = (dollars * rate).round(2)
if (rubles - dollars_to_rubles).abs < 0.01 * rate
	puts "Ваш портфель сбалансирован!"
elsif rubles > dollars_to_rubles
	# Находим излишек валюты и продаем его для баланса
	sell = rubles - (rubles + dollars_to_rubles) / 2
	puts "Вам нужно продать #{sell.round(2)}Р"
else
	sell = dollars_to_rubles - (rubles + dollars_to_rubles) / 2
	puts "Вам нужно продать #{(sell / rate).round(2)}$"
end
