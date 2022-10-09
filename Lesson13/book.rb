require 'date'

class Book
  def initialize(author, title, publish_date)
    @author = author
    @title = title
    @publish_date = Date.parse(publish_date)
  end

  def author
    return @author
  end

  def title
    return @title
  end

  def publish_date
    return @publish_date
  end
end

a = Book.new("Артур Хейли", "Отель", "19.01.1990")
b = Book.new("Братья Стругацкиe", "Пикник на обочине", "6.7.1978")

puts "#{a.author} #{a.title} #{a.publish_date}"
puts "#{b.author} #{b.title} #{b.publish_date}"
