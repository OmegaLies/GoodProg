puts "Мини-викторина. Ответьте на вопросы."
puts

current_path = File.dirname(__FILE__)
questions_with_answers = []

file_names = Dir[current_path + "/data/*"]
questions_with_answers = file_names.map { |file_name| File.readlines(file_name, chomp: true)}

right_answers = 0
number_of_questions = 3

questions_with_answers.sample(number_of_questions).each do |question, answer|
  puts question
  user_input = STDIN.gets.encode("UTF-8").chomp

  if answer == user_input
    puts "Верный ответ!"
    puts
    right_answers += 1
  else
    puts "Неверно. Правильный ответ: #{answer}"
    puts
  end
end

puts "Правильных ответов: #{right_answers} из #{number_of_questions}"
