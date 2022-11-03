# Please copy/paste all three classes into this file to submit your solution!

class Author

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select { |article| @name == article.author.name}
  end

  def magazines
    articles.map{ |article| article.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(author: self, magazine: magazine, title: title )
  end

  def topic_areas
    magazines.map{ |magazine| magazine.category }
  end

end


class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name:, category:)
    name.class == String ? @name = name : @name = "Not a string!"
    category.class == String ? @category = category : @category = "Not a string!"
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    self.contributors_articles.map{ |article| article.author }
  end

  def self.find_by_name(name)
    @@all.find { |obj| name == obj.name }
  end

  def article_titles
    self.contributors_articles.map{ |article| article.title }
  end

  def contributing_authors
    contributors.map { |author| author.name }.tally
    .filter{ |key, value| value.to_i >= 3 ? key : nil }.to_a
    .map { |nested_array| nested_array[0]}
  end

  private

  def contributors_articles
    Article.all.find_all { |article| @name == article.magazine.name }
  end
end


class Article

  attr_reader :title, :author, :magazine

  @@all = []

  def initialize( author:, magazine:, title:)
      author.class == Author ? @author = author : @author = "Not an Author Object!"
      magazine.class == Magazine ? @magazine = magazine : @magazine = "Not a Magazine Object!"       
      title.class == String ? @title = title : @title = "Not a string!"
      @@all << self
  end

  def self.all
      @@all
  end

end