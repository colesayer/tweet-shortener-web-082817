# Write your code here.
require 'pry'
def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  new_array = []
  tweet_array.map do |word|
    dictionary.each do |key, value|
      word = value if word.downcase == key
      end
      new_array << word
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet[0..136] + "..."
  else
    tweet
  end
end
