#encoding: UTF-8

require "json"

file = File.read("#{__dir__}/card.json", encoding: "UTF-8")
card = JSON.parse(file)

puts card["full_name"]
puts "#{card["number"]}, #{card["email"]}"
puts card["info"]
