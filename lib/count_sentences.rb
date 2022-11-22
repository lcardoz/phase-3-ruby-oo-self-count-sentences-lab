require 'pry'

class String

  def sentence?
    "#{self}".end_with?(".")
  end

  def question?
    "#{self}".end_with?("?")
  end

  def exclamation?
    "#{self}".end_with?("!")
  end

  def count_sentences
    if "#{self}".exclude?("." | "?" | "!")
      puts "0"
    else
    puts "#{self}".split(/\.|!|\?/).count
    end
  end

end

"Hello friend! Leah? Ok.".count_sentences
