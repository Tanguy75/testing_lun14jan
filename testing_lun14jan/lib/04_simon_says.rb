def echo(str)
     str
    end

def shout(str)
  str.upcase
end


def repeat(str, d=2)
   a = "#{str} " * d
a.rstrip #rstrip enleve le dernier espace du string
end


def start_of_word(el1, d)
    el1[0..d-1]
end


def first_word(str)
  a = str.split #permet de créer un tableau pour chaque mot du string.
  a[0]
end

def titleize(str)
  littlewords = ["the", "and"]

str.capitalize.gsub(/(\w+)/) do |x| 
littlewords.include?(x) ? x : x.capitalize 
end
 #capitalize la premiere lettre du string, et vérifie 


  # str.split.map{|word|
  #   [if  word != "and" 
  #     word.capitalize!
    
  #   else
  #     word
  #   end]
  # }.join(" ")

end
