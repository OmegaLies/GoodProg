class Question
  def initialize(question, answer, score)
    @question = question
    @answer = answer
    @score = score.to_i
  end

  def question
    return @question
  end

  def answer
    return @answer
  end

  def score
    return @score
  end

  def right_answer?(user_answer)
    if answer == user_answer
      return true
    else
      return false
    end
  end
end
