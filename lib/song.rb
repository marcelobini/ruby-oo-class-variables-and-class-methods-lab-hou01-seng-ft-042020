class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists =[]
    

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count={}
        @@genres.each do |elem|
            if genre_count[elem]
                genre_count[elem] += 1
            else
                genre_count[elem] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count={}
        @@artists.each do |elem|
            if artist_count[elem]
                artist_count[elem] += 1
            else
                artist_count[elem] = 1
            end
        end
        artist_count

    end

end