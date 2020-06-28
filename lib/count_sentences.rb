# Practicing with the concept of "self"
class String
  
  def sentence?
    # Notes to (my)self:
    #? 'self' here evaluates to the instance of string object
    self.end_with?(".")
  end

  def question?
    #? 'self' here evaluates to the instance of string object
    self.end_with?("?")
  end

  def exclamation?
    #? 'self' here evaluates to the instance of string object
    self.end_with?("!")
  end
  
  # TODO - study regex and refactor this...
  def count_sentences
    #? 'self' here evaluates to the instance of string object
    self.split(/[.!?]/).reject { |x| x.empty? }.count #=> ["This, well, is a sentence", " This is too", "", " And so is this, I think", " Woo"]
  end

end


# TODO - study/practice regex and refactor count_sentence (or apply lessons learned toward future assignments)
#self.split(/\W+/).size (does not pass complex string test) #! does not pass complex string sample in rspec
# self.scan(/[\w'-]+|[.,!?]+/).count {|s| s if s.downcase != s.upcase} #! does not pass complex string sample in rspec
#self.split(/\W+/) #! does not pass complex string sample in rspec

# MISC attempts to understand regex behavior
#.reject { |s| s.empty? } #if s.downcase != s.upcase
# self.split([[:punct:]]) {|s| s if s.downcase != s.upcase} #? how can i use [:punc] and how does this 'macro?' work?
# self.scan(/\S+/).flat_map{ |w| w.gsub(/^[^a-z]+|[^a-z]+$/i,'').split(/-/) }