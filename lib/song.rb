class Song

    @@all = []

    attr_accessor :name, :artist 

    def initialize(name)
        @name  = name
        @artist = artist
        save
    end 

    def save
        @@all << self
    end 

    def self.all
        @@all
    end 

    def artist_name
    if artist == nil
    else 
        self.artist.name
    end 
    end 



end 