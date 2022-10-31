require_relative "./author"
require_relative "./magazine"

class Article
    attr_reader :title

    @@all = []

    def initialize(author, magazine, title)
        @author = Author.new(author)
        @magazine = Magazine.new(magazine)
        @title = title
        @@all << self
    end

    # def author
    #     @author.name
    # end

    # def magazine
    #     @magazine[:name]
    # end

    def self.all
        @@all
    end
end

# author = {name: "Pat"}
# magazine = {name: "Standard", category: "sports"}

# a1 = Article.new(author, magazine, title: "Gor Mahia wins")

# p a1.magazine