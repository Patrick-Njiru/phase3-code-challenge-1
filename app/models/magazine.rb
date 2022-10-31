class Magazine
  attr_accessor :name, :category

  @@all = []
  # @@contributors = []
  def initialize(name:, category:)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  # def contributors= (author)
  #   @@contributors << author
  # end

  # def contributors
  #   @@contributors
  # end
end

# m1 = Magazine.new("The Standard", "Entertainment")
# m1.contributors = "Dave"
# m1.contributors = "Steve"

# p m1.contributors