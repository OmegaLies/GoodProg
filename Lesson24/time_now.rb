# encoding: UTF-8

puts "Сколько секунд вам отсчитать?"

number = STDIN.gets.to_i
if number == 0
  number = 10
  puts "Маловато, отсчитаю #{number}"
else
  puts "Хорошо, вот ваши #{number} секунд"
end

number.times do|i|
  puts "#{i+1}: #{Time.new}"
  sleep(1)
end
