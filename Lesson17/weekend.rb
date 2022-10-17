file_name = "#{__dir__}/data/holidays.txt"
holidays = File.readlines(file_name, chomp: true)
today = Time.now()

if (today.saturday? or today.sunday?)
  puts "Сегодня выходной!"
elsif holidays.include?(today.strftime("%d.%m"))
  puts "Сегодня выходной!"
else
  puts "Сегодня будний день, за работу!"
end



