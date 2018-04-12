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

def word_substituter(tweet)
  short_tweet = []
  tweet.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      word.replace(dictionary[word.downcase])
    end
    short_tweet << word
  end
  
  short_tweet.join(" ")
  #binding.pry
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end
  

  