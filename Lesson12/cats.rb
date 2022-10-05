require 'open-uri'
require 'json'

def random_cat_fact
  data = URI.open("https://catfact.ninja/fact").read
  json = JSON.parse(data)

  return json["fact"]
end

puts "Сколько фактов о котах вы хотите прочитать?"
puts "Введите число:"

number = STDIN.gets.to_i
number.times {
  puts random_cat_fact
}
