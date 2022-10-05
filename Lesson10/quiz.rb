puts "Мини-викторина. Ответьте на вопросы."
puts

current_path = File.dirname(__FILE__)
questions_with_answers = []

file_names = Dir[current_path + "/data/*"]
file_names.each do |file_name|
  lines = File.readlines(file_name, chomp: true)
  questions_with_answers << [lines[0], lines[1]]
end

res = 0
num = 3

questions_with_answers.sample(num).each do |question_with_answer|
  puts question_with_answer[0]
  user_input = gets.encode("UTF-8").chomp

  if question_with_answer[1] == user_input
    puts "Верный ответ!"
    puts
    res += 1
  else
    puts "Неверно. Правильный ответ: " + question_with_answer[1]
    puts
  end
end

puts "Правильных ответов: " + res.to_s + " из " + num.to_s
