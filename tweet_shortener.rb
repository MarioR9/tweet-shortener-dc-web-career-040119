# Write your code here.
dSkip to content

 
Why GitHub?  
Enterprise 
Explore  
Marketplace 
Pricing  
  
Sign in 
Sign up 


 Watch 
0 
 Star 
0 
 Fork 
9 

PeterViss/tweet-shortener-dc-web-career-040119 
forked from learn-co-students/tweet-shortener-dc-web-career-040119 
 Code 
 Pull requests 0 
 Projects 0 
 Insights 
Dismiss 
Join GitHub today
GitHub is home to over 31 million developers working together to host and review code, manage projects, and build software together.
Sign up 
Branch: master 
tweet-shortener-dc-web-career-040119/tweet_shortener.rb 
Find file 
Copy path 
 PeterViss Done. 
f21b123 25 days ago 
2 contributors 
 
 
59 lines (47 sloc) 935 Bytes 
Raw
Blame
History
   

def dictionary

  dict = {

    "hello" => 'hi',

    "to"=> "2",

    "too"=> "2",

    "two" => "2",

    "for"=>"4",

    "four" => "4",

    "For"=>"4",

    "Four" => "4",

    'be' => "b",

    'you'=> "u",

    "at" =>"@",

    "and" => "&",

    }

end





def word_substituter(tweet)

  dict = dictionary

  words = tweet.split(" ")



  words.collect do |word|

    dictionary.collect do |key, value|

      if word == key

        word.replace(value)

      end

    end

  end

  words.join(" ")

end





def bulk_tweet_shortener(tweets_array)



  tweets_array.collect do |tweet|

    puts word_substituter(tweet)

  end

end





def selective_tweet_shortener(tweet)

  if tweet.chars.length > 140

    word_substituter(tweet)

  else

    tweet

  end

end







def shortened_tweet_truncator(tweet)

  if word_substituter(tweet).chars.length > 140

    truncated = word_substituter(tweet).chars[0..136].push("...").join("")

  else

    word_substituter(tweet)

  end

end

© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
 
Contact GitHub
Pricing
API
Training
Blog
About

