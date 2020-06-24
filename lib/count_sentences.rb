require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?

    if self.end_with?('!')
      return true
    else
      return false
    end
  end

  def count_sentences
    delimiters = ['.', '!']
    self.split(Regexp.union(delimiters)).length    #line credit https://stackoverflow.com/questions/19509307/split-string-by-multiple-delimiters
  end
end
