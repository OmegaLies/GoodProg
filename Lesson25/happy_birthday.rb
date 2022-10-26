# encoding: utf-8

def happy_birthday(person)
  greeting =
    case person[:sex]
    when "Мужчина" then "Дорогой"
    when "Женщина" then "Дорогая"
    else
      "Дорогое"
    end
  <<HEREDOC
  #{greeting} #{person[:name]}

  Поздравляем Вас с днём рождения!
  Вам сегодня исполняется аж #{person[:age]}

  #{person[:text]}
HEREDOC
end

person = {
  name: "Борис",
  sex: "Мужчина",
  age: "48",
  text: "Желаем успехов в лечении простатита!"
}

puts happy_birthday(person)
