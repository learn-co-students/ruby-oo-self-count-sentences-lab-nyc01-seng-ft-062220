require 'pry'

class String

  #attr_accessor :string 
  #def get
  #  @string
  #end
  
  #def set=(string)
  #  @string = string
  #end  
  
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
    a = self.split(/\.|\?|\!/).delete_if {|sentence|
      sentence.size<2}
    a.size   
  end
end