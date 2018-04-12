require 'pry'

def dictionary
  dictionary = 
  { "hello" => 'hi',
    "to, two, too" => '2', 
    "for, four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&',
  }
  
end

def word_substituter(tweets)
  tweets.split.collect do |word|
    if dictionary.keys.include?(word)
      puts word
    end
  end
  
  binding.pry
end
