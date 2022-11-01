require_relative "./author"
require_relative "./magazine"

class Article
    attr_reader :title, :author, :magazine

    @@all = []

    def initialize(author:, magazine:, title:)
        @author = Author.new(author)
        @magazine = Magazine.new(**magazine)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

end
