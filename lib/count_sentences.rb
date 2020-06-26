require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      return true
    else false
    end
  end

  def question?
    if self.end_with?("?") == true
      return true
    else false
    end
  end

  def exclamation?
    if self.end_with?("!") == true
      return true
    else false
    end
  end

  def count_sentences
    count = 0
    self.split(" ").each do |word|
      if word.sentence? || word.question? || word.exclamation?
      count +=1
    end
  end
  return count
  end
end