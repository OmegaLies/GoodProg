require_relative "lib/film"

file_names = Dir["#{__dir__}/data/*"]
films = file_names.map do |file_name|
  lines = File.readlines(file_name, chomp: true)
  Film.new(lines[0], lines[1], lines[2])
end

number_of_questions = 3
right_answers = 0

directors = films.map(&:director).uniq

films.sample(number_of_questions).each do |film|
  puts "Кто снял фильм «#{film.title}»?"
  puts

  answers = [film.director] + directors.grep_v(film.director).sample(3).map { |variant| variant }

  answers.shuffle!.each.with_index(1) { |answer, index| puts "#{index}. #{answer}" }
  puts

  user_input = STDIN.gets.to_i
  if film.right_answer?(answers[user_input - 1])
    puts "Верно!"
    puts
    right_answers += 1
  else
    puts "Неверно! Правильный ответ - #{film.director}"
    puts
  end
end

puts "Правильных ответов: #{right_answers} из #{number_of_questions}"
puts
