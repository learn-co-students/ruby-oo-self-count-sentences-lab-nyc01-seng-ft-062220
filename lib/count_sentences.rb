require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    step_one = self.split(/[.!?]/)
    step_one.reject {|ele| ele.empty?}.count
  end
end

