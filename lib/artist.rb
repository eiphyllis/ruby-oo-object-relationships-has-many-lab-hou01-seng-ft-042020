require 'pry'
#build artist/song 
# and post/author simultaneously 
class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end 

    def songs
        # binding.pry
        Song.all.select do |song|
            song.artist == self
        end 
    end 

    def add_song(song)
        song.artist = self

    end 

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.all
        @@all
    end 

    def self.song_count
        Song.all.size
    end 


end 