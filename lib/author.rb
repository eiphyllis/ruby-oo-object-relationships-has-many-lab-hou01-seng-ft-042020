
class Author

    attr_accessor :name

    @@all = []
    def posts 
        Post.all.select do |post|
            post.author == self
        end 
    end 

    def initialize(name)
        @name = name
    end 

    def add_post(post)
        post.author = self
    end 

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end 

    def self.all
        @@all
    end 

    def self.post_count
        Post.all.size
    end 
end 