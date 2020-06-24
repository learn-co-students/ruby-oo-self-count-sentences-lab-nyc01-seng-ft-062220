require 'pry'

class String

  def sentence?
   p self.end_with?(".")
  end

  def question?
    p self.end_with?("?")
  end

  def exclamation?
    p self.end_with?("!")
  end

  def count_sentences
    array = self.strip.split(" ")
    count = 0
    array.each do |letter|
      if letter.question? || letter.sentence? || letter.exclamation?
        count += 1
      end
    end
    p count
  end
end