require 'pry'

class String

  def sentence?
  	if !(self.end_with?("."))
  		false
  	else 
  		true
  	end
  	
  end

  def question?
  	if !(self.end_with?("?"))
  		false
  	else 
  		true
  	end
  
  end

  def exclamation?
  	if !(self.end_with?("!"))
  		false
  	else 
  		true
  	end
  	
  end

  def count_sentences
  	new_str = self.gsub("!", ".").gsub("?",".").gsub("!!",".").split(".")
    count =  0
    new_str.each do |sentence|
      if sentence =~ /[A-Za-z]/
        count += 1
      end 
    end
      count 
  end
end
