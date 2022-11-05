# encoding: utf-8
#
class Hashtag
  def self.from_string(string)
    string.scan(/#[[:word:]-]+/).join(' ')
  end
end



# puts "Введите строку с хэштегами:"
# string = STDIN.gets.chomp
# puts string
# hashtags = Hashtag.from_string(string)
# puts
# p hashtags
