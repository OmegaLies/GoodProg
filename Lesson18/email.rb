puts "Введите email:"
user_input = STDIN.gets.chomp
mask = /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
if user_input.match?(mask)
  puts "Спасибо!"
else
  puts "Это не email"
end