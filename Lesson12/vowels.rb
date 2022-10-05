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

puts "Введите слово"
user_input = STDIN.gets.chomp
