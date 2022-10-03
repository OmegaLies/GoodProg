# Заводим список покупок
list = ["масло", "молоко", "хлопья", "картошка", "курица", "помидоры"]
puts "Нужно купить:"
puts list
puts

until list.empty?
	# Считываем список купленного, разбиваем по пробелам
	puts "Что купили? Если продуктов несколько, введите их через пробел"
	buy = gets.chomp.split(' ')
	list.delete_if { |item| buy.include?(item) }
	unless list.empty?
		puts "Осталось купить:"
		puts list
		puts
	else
		puts "Все куплено"
	end
end
