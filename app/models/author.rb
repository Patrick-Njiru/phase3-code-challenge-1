require_relative './article'

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

  def add_article(magazine, title)
    Article.new(author: @name, magazine: magazine, title: title )
  end

  def topic_areas
    Article.all.select { |obj| @name == obj.author.name ? obj.magazine.category : nil}
    .map{ |article| article.magazine.category}.uniq
  end

end

