puts "Какая у вас на руках валюта?
1. Рубли
2. Доллары"
curr = gets.encode("UTF-8").chomp.to_i
puts "Сколько сейчас стоит 1 доллар в рублях?"
rate = gets.encode("UTF-8").chomp.to_f
if (curr == 1)
	puts "Сколько  у вас рублей?"
	amount = gets.encode("UTF-8").chomp.to_f
	puts "Ваши запасы равны: " + "$ " + (amount / rate).round(2).to_s
else
	puts "Сколько  у вас долларов?"
	amount = gets.encode("UTF-8").chomp.to_f
	puts "Ваши запасы равны: " + "Р " + (amount * rate).round(2).to_s
end