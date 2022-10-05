def initials(name, surname, patronymic)
  res = surname + ' ' + name[0].upcase + '.' + patronymic[0].upcase + '.'
  return res
end

puts "Введите фамилию:"
user_surname = gets.chomp

puts "Введите имя:"
user_name = gets.chomp

puts "Введите отчество:"
user_patronymic = gets.chomp

res = initials(user_name, user_surname, user_patronymic)
puts res
