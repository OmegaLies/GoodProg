# encoding: utf-8

# Программа, проверяющая палиндром введенное слово или нет, версия 3, в которой
# можно вводить строку с пробелами и знаками препинания

# Спрашиваем у пользователя строку и записываем её в переменную original_string
puts "Введите строку, которую надо проверить на «палиндромность»:"
original_string = STDIN.gets.encode("UTF-8").chomp

# Переводим строку в нижний регистр.
stripped_string = original_string.downcase

# Удаляем из строки все пробелы и знаки препинания методом delete
clear_string = stripped_string.delete " ,.!?;:()\"—-"

# Получаем перевернутую строку и записываем её в переменную reverse_string.
reverse_string = clear_string.reverse

# Сравниваем перевернутую строку с той, которая в переменной сlear_string,
# если они совпали, это палиндром.
if reverse_string == clear_string
  puts 'Да, это палиндром'
else
  puts 'Нет, это не палиндром'
end
