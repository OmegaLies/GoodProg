class Сhameleon
  def initialize(colour)
    @colour = colour
  end

  def colour
    return @colour
  end

  def change_colour!(colour)
    @colour = colour
    return nil
  end
end

test_chameleon = Сhameleon.new("красный")
puts "Мой цвет - #{test_chameleon.colour}"
test_chameleon.change_colour!("синий")
puts "Теперь мой цвет - #{test_chameleon.colour}"
test_chameleon.change_colour!("зеленый")
puts "А теперь мой цвет - #{test_chameleon.colour}"
