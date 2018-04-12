require 'pry'

def dictionary
  dictionary = 
  { "hello" => 'hi',
    "to" => '2', 
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
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
      word.replace(dictionary[word])
    end
    short_tweets << word
  end
  
  puts short_tweets.join(" ")
  binding.pry
end
