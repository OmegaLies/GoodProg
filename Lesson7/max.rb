arr = []
puts "Какой длины будет массив случайных чисел?"
n = gets.chomp.to_i

count = 0
while count < n do
	arr << rand(100)
	count += 1
end
puts arr.to_s

max = arr[0]
for item in arr do
	if item > max
		max = item
	end
end
puts "Самое большое число: " + max.to_s