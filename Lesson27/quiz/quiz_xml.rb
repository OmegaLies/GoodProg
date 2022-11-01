# encoding: UTF-8

require "rexml/document"
require_relative "lib/ib/question"

puts "Мини-викторина. Ответьте на вопросы."
puts

file = File.new("#{__dir__}/data/questions.xml")
doc = REXML::Document.new(file)
file.close

questions = doc.root.elements.map do |question|
  puts question.attributes["right"].to_i
  Question.new(
    text: question.elements["text"].text,
    variants: question.elements["variants"].elements.map(&:text),
    right_variant_id: question.attributes["right"].to_i,
    points: question["points"].to_i,
    minutes: question["minutes"].to_i
  )
end

right_answers = 0
number_of_questions = 3
user_score = 0

questions.sample(number_of_questions).each do |question|
  puts question.text
  question.variants.each.with_index(1) { |variants, index| puts "#{index}. #{variants}"}
  user_answer = STDIN.gets.encode("UTF-8").to_i

  if user_answer == question.right_variant_id
    puts "Верный ответ!"
    puts
    right_answers += 1
    user_score += question.points
  else
    puts "Неверно. Правильный ответ: #{question.answer}"
    puts
  end
end

puts "Правильных ответов: #{right_answers} из #{number_of_questions}"
puts "Вы набрали #{user_score} баллов"
puts
