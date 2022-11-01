require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

au1, au2, au3 = "Brian", 'Mark', 'Edwin'

author1, author2 = Author.new(au1), Author.new(au2)

m1 = { name: "New York Times", category: "Celebrity news" }
m2 = { name: "The Standard", category: "Gambling" }

magazine1, magazine2 = Magazine.new(**m1), Magazine.new(**m2)

article1, article2, article3 = Article.new(author: au1, magazine: m1, title: "Bradley Morgan divorced"), Article.new(author: au2, magazine: m2, title: "How to Bet Responsibly"), Article.new(author: au1, magazine: m1, title: "Will Daniel Craig be in the next James Bond movie?")


### DO NOT REMOVE THIS
binding.pry

0
