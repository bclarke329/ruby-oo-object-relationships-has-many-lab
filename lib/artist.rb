class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = [] 
        @@all << self
    end

    def self.all 
        @@all
    end 

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end 

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end 

    def self.song_count
        songs_array = self.all.map {|artist| artist.songs.length}
        songs_array.sum
    end 



end 

