
class Song

    attr_accessor :artist, :name

    @@all = []
    # add_song_by_name method should take in an argument of a name (or title), 
    # use that argument to create a new song (or post) 
    # and then associate the objects.
    def initialize(name)
        @name = name
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def artist_name
        if self.artist
            return self.artist.name
        else 
            return nil
        end 
    end 
end 