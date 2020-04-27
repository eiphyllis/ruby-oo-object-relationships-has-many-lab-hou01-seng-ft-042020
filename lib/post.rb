
class Post
    attr_accessor :author, :title

    @@all = []

    def initialize(title)
        @title = title
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def add_post_by_title
        # associates the newly created post with an author.
    end 

    def author_name
        if self.author
            return self.author.name
        else 
            return nil
        end 
    end 

end 