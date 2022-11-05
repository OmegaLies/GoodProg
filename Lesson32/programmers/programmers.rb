#encoding: UTF-8

require "json"

file = File.read("#{__dir__}/programmers.json", encoding: "UTF-8")
languages = JSON.parse(file).sort_by { |key, value| value }.reverse

most_popular = languages.first
puts "Самый популярный язык: #{most_popular.last} (#{most_popular.first})"
puts
languages.each.with_index(1) do |language, index|
  puts "#{index}: #{language.first} (#{language.last})"
end
