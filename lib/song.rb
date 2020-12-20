class Song
    
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @genrecount={}
        @@genres.each do |x|
            if @genrecount[x]
                @genrecount[x]+=1
            else
                @genrecount[x]=1

            end
        end
        @genrecount
    end

    def self.artist_count
        @artistcount={}
        @@artists.each do |x|
            if @artistcount[x]
                @artistcount[x]+=1
            else
                @artistcount[x]=1
            end
        end
        @artistcount
    end


    




end