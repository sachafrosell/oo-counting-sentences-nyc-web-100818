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
    array = self.split(/[.?!]/)
   new_array = array.select do |sentence|
      sentence.to_s != ""
    end 
    new_array.length
  end
 
end

