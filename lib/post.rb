class Post
#Posts should have a title and belong to an author. A post should be able to tell you the name of its author:
  attr_accessor :author, :title
  @@all = []
def initialize(title)
  @title = title
  @@all << self

end
 def self.all
   @@all
end
def author_name
if author
  self.author.name
else
  nil
end
end
end
