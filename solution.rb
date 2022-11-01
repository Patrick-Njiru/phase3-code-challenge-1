# Please copy/paste all three classes into this file to submit your solution!

class Author
    
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select { |obj| @name == obj.author.name ? obj : nil }
  end

  def magazines
    Article.all.select{ |obj| @name == obj.author.name ? obj : nil}
    .map{ |article| article.magazine }.uniq
  end

  def add_article(magazine:, title:)
    Article.new(author: @name, magazine: magazine, title: title )
  end

  def topic_areas
    Article.all.select { |obj| @name == obj.author.name ? obj.magazine.category : nil}
    .map{ |article| article.magazine.category}.uniq
  end

end

class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name:, category:)
    @name, @category = name, category
    # @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
  Article.all.find_all { |obj| @name == obj.magazine.name ? obj.author : nil}
  .map{ |article| article.author} 
  end

  def self.find_by_name(name)
    @@all.find { |obj| name == obj.name }
  end

  def article_titles
    Article.all.filter { |obj| @name == obj.magazine.name ? obj.title : nil }
    .map { |article| article.title }
  end

  def contributing_authors
    contributing_authors = Article.all.filter { |obj| @name == obj.magazine.name ? obj.title : nil }
    .map { |article| article.author.name }
    contributing_authors.length > 2 ? contributing_authors : nil
  end

end

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