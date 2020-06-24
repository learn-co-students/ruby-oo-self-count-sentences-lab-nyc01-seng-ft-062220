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
    sentences = 0
    words = self.split
    words.each {|word| 
      if word.sentence? || word.question? || word.exclamation?
        sentences += 1
      end
      }
    sentences
  end
end