class Question
  attr_reader :text, :variants, :right_variant_id, :points, :minutes

  def initialize(params)
    @text = params[:text]
    @variants = params[:variants]
    @right_variant_id = params[:right_variant_id]
    @points = params[:points]
    @minutes = params[:minutes]
  end

  def answer
    @variants[@right_variant_id - 1]
  end
end
