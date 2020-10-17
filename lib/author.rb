class Author

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end 

    def self.all
        @@all
    end 

    def add_post(post)
        @posts << post
        post.author = self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end 

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end 

    def self.post_count
        posts_array = self.all.map {|author| author.posts.length}
        posts_array.sum
    end 
    
end 

