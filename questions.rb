class Questions
  attr_reader :num1, :num2, :question, :answer

  def initialize
    @num1 = Random.new.rand(1..20)
    @num2 = Random.new.rand(1..20)
    @answer = num1 + num2
    @question = new_question
  end

  def new_question
    question = "What does #{num1} plus #{num2} equal?"
  end
end