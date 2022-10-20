puts("Введите номер телефона:")
user_input = STDIN.gets.chomp

mask = /\A((\+\d{1,4})|\d{1,3})[ -]?\(?\d{1,4}\)?[ -]?\d{3,4}[ -]?\d{1,2}[ -]?\d{0,2}\z/

if user_input.match?(mask)
  puts "Это номер телефона"
else
  puts "Это не номер телефона"
end
