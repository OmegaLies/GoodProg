class Question
  attr_reader :question, :answer, :score

  def initialize(question, answer, score)
    @question = question
    @answer = answer
    @score = score.to_i
  end

  def right_answer?(user_answer)
    answer == user_answer
  end
end
