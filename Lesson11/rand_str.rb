def confuse_word(word)
  res = word.chars.shuffle.join
  return res
end

def confuse_phrase(phrase)
  words = phrase.split(' ')
  res = []
  words.each do |word|
    res << confuse_word(word)
  end
  res = res.join(' ')
  return res
end

puts "Введите строку:"
user_input = STDIN.gets.chomp
output = confuse_phrase(user_input)
puts output
