class Film
  attr_reader :title, :director, :year

  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
  end

  def right_answer?(user_director)
    user_director == @director
  end
end
