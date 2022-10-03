file_name = ARGV[0]

if Gem.win_platform? && ARGV[0]
  file_name = file_name.encode("UTF-8").to_s
end

if file_name == nil
  file_name = File.dirname(__FILE__) + '\data\strings.txt'
end

if File.exist?(file_name)
  f = File.new(file_name, 'r:UTF-8')
  lines = f.readlines
  f.close

  puts "Открыт файл: " + file_name
  empty_lines_counter = 0
  last_five_lines = []

  lines.each_with_index do |line, index|
    if line == "\n"
      empty_lines_counter += 1
    end
    if lines.size - index <= 5
      last_five_lines << line
    end
  end
  puts "Всего строк: " + lines.length.to_s
  puts "Пустых строк: " + empty_lines_counter.to_s
  puts "Последние пять строк:"
  puts
  last_five_lines.each do |line|
    puts line
  end
else
  puts "Файл не найден"
end
