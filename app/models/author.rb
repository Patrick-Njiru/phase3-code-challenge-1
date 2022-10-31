require_relative "./magazine"
require_relative "./article"

class Author
  attr_reader :name

  # @@all_magazines =  []
  # @@all_articles = []

  def initialize(name)
    @name = name
  end

  # def magazines= (magazine)
  #   @@all_magazines << magazine
  # end

  # def articles =()
  #   @@all_articles << Article
  # end

  # def articles
  #   @@all_articles << Article
  # end

  # def magazines
  #   @@all_magazines.uniq
  # end
end

# author1 = Author.new("Pat")
# author1.articles = "Mahia"
# author1.articles = "Gor"
# author1.magazines = "The Standard"
# author1.magazines = "The Standard"

# p author1.articles
# p author1.magazines
