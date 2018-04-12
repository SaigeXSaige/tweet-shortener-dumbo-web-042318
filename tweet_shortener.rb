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
    if word.include?(dictionary.keys)
      dictionary.values.each do |short_word|
        word.replace "#{short_word}"
      end
    end
    short_tweets << word
  end
  
  binding.pry
end
