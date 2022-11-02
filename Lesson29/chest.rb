# encoding: UTF-8

require "rexml/document"
require 'date'

puts "В этом сундуке хранятся ваши желания."

file_name = "#{__dir__}/wish_chest.xml"
unless File.exist?(file_name)
  File.open(file_path, 'w:UTF-8') do |file_tmp|
    file_tmp.puts "<?xml version='1.0' encoding='UTF-8'?>"
    file_tmp.puts '<wishes></wishes>'
  end
end

file = File.new(file_name, "r:UTF-8")
doc = REXML::Document.new(file)
file.close

today = Date.today
wishes = doc.elements.find("wishes").first
fulfilled = wishes.elements.reject { |wish| Date.parse(wish.attributes["date"]) > today }
unfulfilled = wishes.elements.reject { |wish| Date.parse(wish.attributes["date"]) <= today }

fulfilled = fulfilled.map {|wish| "#{wish.attributes["date"]}: #{wish.text.strip}"}
unfulfilled = unfulfilled.map {|wish| "#{wish.attributes["date"]}: #{wish.text.strip}"}

puts "Эти желания должны уже были сбыться к сегодняшнему дню:"
puts fulfilled.join("\n")
puts
puts "А этим желаниям ещё предстоит сбыться:"
puts unfulfilled.join("\n")
puts
puts "Чего бы вы хотели?"
wish_text = STDIN.gets.chomp

puts "До какого числа вы хотите осуществить это желание? (укажите дату в формате ДД.ММ.ГГГГ)"
date_input = STDIN.gets.chomp

wish_date = nil

if date_input == ""
  wish_date = today
else
  begin
    wish_date = Date.parse(date_input)
  rescue ArgumentError
    wish_date = today
  end
end

wish = wishes.add_element "wish", { "date" => wish_date.strftime("%d.%m.%Y") }
wish.text = wish_text

file = File.new(file_name, "w:UTF-8")
doc.write(file, 2)
file.close

puts "Информация успешно сохранена"
