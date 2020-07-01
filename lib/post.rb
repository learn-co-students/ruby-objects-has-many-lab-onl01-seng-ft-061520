class Post  
  @@all = []
  attr_accessor :title, :author
  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def posts
    Post.all.select do |post|
         post.artist == self
        end
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end