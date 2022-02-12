require 'pry'

class String

  def sentence?
    self.include? "."
  end

  def question?
    self.include? "?"
  end

  def exclamation?
    self.include? "!"
  end

  def count_sentences
    text.gsub(/[\w']+/) do |word|
      if word.is_of_certain_part_of_speech?
        "___"  # Replace it with `"___"`.
      else
        word.length   # Put back the original word.
      end
     end
  end
end