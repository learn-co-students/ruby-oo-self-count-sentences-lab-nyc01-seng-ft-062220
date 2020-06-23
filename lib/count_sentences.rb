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
    counter = 0
      divided_string = self.split
      divided_string.each do |element|
        if element.sentence? || element.question? || element.exclamation?
          counter += 1
        end
      end
      counter
      # divided_string.reject!{|element| element == "" || element}
      # divided_string.count
  end
end