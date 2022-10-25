# encoding: utf-8

def happy_birthday(person)
  "Дорогой #{person[:name]}\n\n"\
  "Поздравляем Вас с днём рождения!\n"\
  "Вам сегодня исполняется аж #{person[:age]}\n\n"\
  "#{person[:text]}\n"
end

person = {
  name: "Борис",
  age: "48",
  text: "Желаем успехов в лечении простатита!"
}

puts happy_birthday(person)
