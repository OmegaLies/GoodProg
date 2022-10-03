argument1 = ARGV[0]
argument2 = ARGV[1]

if Gem.win_platform? && ARGV[0]
  argument1 = argument1.encode("UTF-8").to_i
end

if argument1 == nil
  puts "Какая сейчас температура?"
  argument1 = gets.to_i
end

if Gem.win_platform? && ARGV[1]
  argument2 = argument2.encode("UTF-8").to_i
end

if argument2 == nil
  puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
  argument2 = gets.to_i
end

if (argument2 == 1 && argument1 in 15..35) || (argument1 in 22..30)
  puts "Скорее идите в парк, соловьи поют!"
else
  puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
end
