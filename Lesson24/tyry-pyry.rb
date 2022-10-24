# encoding: UTF-8

def check_int(input_int)
  mod3 = input_int % 3 == 0
  mod5 = input_int % 5 == 0
  if mod3 && mod5
    "тыры-пыры"
  elsif mod3
    "тыры"
  elsif mod5
    "пыры"
  else
    input_int
  end
end

100.times { |i| puts check_int(i+1)}
