class Author  
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
  end 
  
  
  def posts 
    Post.all.select do |post|
      post.author = self
    end 
  end 
  
  def add_post(posts)
    self.posts << posts 
    posts.author = self
  end
  
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
  end 

  def self.post_count
    Post.all.count
  end 
 
  
  
  
  
end 