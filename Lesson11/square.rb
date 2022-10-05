def area(radius)
  s = radius ** 2 * Math::PI
  return s
end

puts "Введите радиус круга:"
radius = gets.chomp.to_i
puts "Площать круга: " + area(radius).to_s
