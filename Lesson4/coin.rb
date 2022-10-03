coin = rand(11)
if coin == 0
  puts "Монетка встала на ребро"
elsif coin % 2 == 0
  puts "Выпал орел"
else
  puts "Выпала решка"
end
