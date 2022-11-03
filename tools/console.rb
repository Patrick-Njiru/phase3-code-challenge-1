require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

au1, au2, au3 = "Brian", 'Mark', 'Edwin'

author1, author2, author3 = Author.new(au1), Author.new(au2), Author.new(au3)

m1 = { name: "New York Times", category: "Celebrity news" }
m2 = { name: "The Standard", category: "Gambling" }

magazine1, magazine2 = Magazine.new(**m1), Magazine.new(**m2)

article1, article2, article3, article4 = Article.new(author: author1, magazine: magazine1, title: "Bradley Morgan divorced"), Article.new(author: author2, magazine: magazine2, title: "How to Bet Responsibly"), Article.new(author: author1, magazine: magazine1, title: "Will Daniel Craig be in the next James Bond movie?"), Article.new(author: author1, magazine: magazine1, title: "Louis CK New Show 'Sorry' coming out soon!")


### DO NOT REMOVE THIS
binding.pry

0
