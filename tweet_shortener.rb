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
  short_tweets = []
  tweets.split.collect do |word|
    if dictionary.keys.include?(word)
      word.replace "#{dictionary.values}"
    end
    short_tweets << word
  end
  
  binding.pry
end
