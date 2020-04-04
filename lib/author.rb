class Author

  attr_accessor :name, :posts
  @@post_count = 1

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def pots
    Posts.all.select {|posts| post.author == self}
  end
  
  def self.post_count
    @@post_count
  end
end
