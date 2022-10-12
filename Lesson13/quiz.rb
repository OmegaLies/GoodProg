require_relative 'lib/question'

puts "Мини-викторина. Ответьте на вопросы."
puts

file_names = Dir["#{__dir__}/data/*"]
questions = file_names.map do |file_name|
  lines = File.readlines(file_name, chomp: true)
  Question.new(lines[0], lines[1], lines[2])
end

right_answers = 0
number_of_questions = 3
user_score = 0

questions.sample(number_of_questions).each do |question|
  puts question.question
  user_answer = STDIN.gets.encode("UTF-8").chomp

  if question.right_answer?(user_answer)
    puts "Верный ответ!"
    puts
    right_answers += 1
    user_score += question.score
  else
    puts "Неверно. Правильный ответ: #{question.answer}"
    puts
  end
end

puts "Правильных ответов: #{right_answers} из #{number_of_questions}"
puts "Вы набрали #{user_score} баллов"
puts
