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
    delimiters = ['. ', '?', "! "] #need whitespace, my own genius here :)
    split = self.split(Regexp.union(delimiters)) #https://stackoverflow.com/questions/19509307/split-string-by-multiple-delimiters
    split.count
  end
end