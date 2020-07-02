class Author
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select { |post| post.author == self}
  end
  
  # #add_post: associates a post wwith an author
  def add_post(post)
    post.author = self
  end
    
  # #add_post_by_title: creates a new post with passed name and associates it to the author
  def add_post_by_title(title)
    add_post(Post.new(title))
  end
  
  
  # .post_count: returns number of posts assoc. to all authors
  def self.post_count
    Post.all.length
  end
end