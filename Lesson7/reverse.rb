arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
len = arr.length - 1
count = 0
while count <= len / 2 do
	tmp = arr[count]
	arr[count] = arr[len - count]
	arr[len - count] = tmp
	count += 1
end
puts arr.to_s