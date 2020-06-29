class Author 
  attr_accessor :name, :posts 
  
  def initialize(name)
    @name = name 
  end 
  
  def posts 
    Post.all.select do |all_posts| 
      all_posts.author == self
    end 
  end 
  
  def add_post(content)
    content.author = self 
  end 
  
  def add_post_by_title(post_title)
    content = Post.new(post_title)
    add_post(content)
  end
  
  def self.post_count
    Post.all.count 
  end 
  
end 