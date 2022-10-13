require_relative "lib/film"

file_names = Dir["#{__dir__}/data/*"]
films = file_names.map do |file_name|
  lines = File.readlines(file_name, chomp: true)
  Film.new(lines[0], lines[1], lines[2])
end

directors = films.map { |film| film.director }
directors.uniq
