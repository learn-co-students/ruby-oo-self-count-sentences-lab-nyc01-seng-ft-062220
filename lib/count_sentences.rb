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
    a = self.split(/\.|\?|\!/).reject {|space| space.empty?}
    a.length
    #binding.pry
    # count = 0
    # self.split(" ").each do |word|
    #   if word.is_sentence? || 
  end
end

#"This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(/((?<=[a-z0-9)][.?!])|(?<=[a-z0-9][.?!]"))\s+(?="?[A-Z])/)
