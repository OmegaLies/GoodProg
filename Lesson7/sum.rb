puts "Введите N:"
N = gets.chomp.to_i
arr = []
count = 1
while count <= N do
	arr << count
	count += 1
end
puts arr.to_s
puts "Сумма чисел: " + arr.sum.to_s