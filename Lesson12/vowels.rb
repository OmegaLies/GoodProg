def vowels(word)
  vowels_list = %[а е ё и о у ы э ю я]
  res = 0
  word.downcase.chars.each do |letter|
    if vowels_list.include?(letter)
      res += 1
    end
  end
  return res
end

def vowels_and_consonants(word)
  vowels_count = vowels(word)
  consonants_count = word.length - vowels_count
  return [vowels_count, consonants_count]
end

puts "Введите слово:"
user_input = STDIN.gets.chomp

result = vowels_and_consonants(user_input)
puts "В этом слове #{result[0]} гласных и #{result[1]} согласных"
