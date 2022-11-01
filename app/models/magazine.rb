require_relative "./article"

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name:, category:)
    @name = name
    @category = category
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
    Article.all.filter { |obj| @name == obj.magazine.name ? obj.title : nil }
    .map { |article| article.author.name }
  end

end
