puts("Введите номер телефона:")
user_input = STDIN.gets.chomp

user_input.gsub!(/[ \-\+\(\)]/, '')

if user_input.match?(/\d{1,4}\d{2,4}\d{5,8}/)
  puts "Это номер телефона"
else
  puts "Это не номер телефона"
end
