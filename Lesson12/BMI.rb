def body_mass_index(mass, height)
  res = mass / height ** 2

  return res
end

def BMI_verdict(index)
  res =
    case
    when index < 16
      "Выраженный дефицит массы тела"
    when index < 18.5
      "Недостаточная (дефицит) масса тела"
    when index < 25
      "Норма"
    when index < 30
      "Избыточная масса тела (предожирение)"
    when index < 35
      "Ожирение 1 степени"
    when index < 40
      "Ожирение 2 степени"
    else
      "Ожирение 3 степени"
    end

  return res
end

puts "Введите ваш вес (в кг.):"
user_mass = STDIN.gets.to_i
puts

puts "Введите ваш рост (в м.):"
user_height = STDIN.gets.to_f
puts

user_index = body_mass_index(user_mass, user_height)
puts "Ваш индекс: #{user_index.round(2)}"
puts

puts "#{BMI_verdict(user_index)}"
