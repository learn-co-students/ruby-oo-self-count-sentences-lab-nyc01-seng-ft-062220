require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    sentence_count = 0
    new_array = self.split
    new_array.each{|element|
      if element.question?
        sentence_count += 1
      elsif element.sentence?
        sentence_count += 1
      elsif element.exclamation?
        sentence_count += 1
      end
    }
    sentence_count
  end
end