class Author 
  
  attr_accessor :name 
  
  @@post_count = 1
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_name(post_name)
    post = Post.new(post_name)
    add_post(post)
    post.author = self
  end
  
  
  
  
end  
    