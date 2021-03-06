class Magicball
  ANSWERS = ['Outcome does not look likely', 'Not now', 'Better luck next time', 'Great job'].freeze
  def ask(question)
    # ANSWERS.sample # sample pulls a random sample from the array
    raise 'Question has invalid format.' unless
      question_valid?(question)
    ANSWERS.sample
  end

  private

  def question_valid?(question)
    question.is_a?(String) && question[-1] =="?"
  end
end
