puts "Мини-викторина. Ответьте на вопросы."
puts

current_path = File.dirname(__FILE__)
questions = []
answers = []

range = (1..7)
range.each do |ind|
  file_name = current_path + "/data/file" + ind.to_s + ".txt"
  if File.exist?(file_name)
    f = File.new(file_name, 'r:UTF-8')
    lines = f.readlines
    f.close

    questions << lines[0].chomp
    answers << lines[1].chomp
  else
    abort "Файл по пути " + file_name + " не найден"
  end
end

res = 0

3.times {
  question = questions.sample
  ind = questions.index(question)
  questions.delete(question)

  answer = answers[ind]
  answers.delete(answer)

  puts question
  user_input = gets.encode("UTF-8").chomp

  if answer == user_input
    puts "Верный ответ!"
    puts
    res += 1
  else
    puts "Неверно. Правильный ответ: " + answer
    puts
  end
}

puts "Правильных ответов: " + res.to_s + " из 3"
