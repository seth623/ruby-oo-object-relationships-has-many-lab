class Artist

    attr_accessor :name 

    def initialize(name)
        @name = name 
    end 

    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(name)
        added_song = Song.new(name)
        added_song.artist = self  
    end

    def songs
        Song.all.select { |song| song.artist == self } 
    end 

    def self.all_songs
        @@all_songs 
    end 

    def self.song_count
        Song.all.length 
    end 

end 