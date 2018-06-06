class Song
    attr_accessor :name
    attr_accessor :artist
    @@all =[]

    def initialize(name)
      @name = name
    end

    def self.all
      @@all
    end

    def self.new_by_filename(filename)
      song = self.new(filename.split(" - ")[0])

    end

    def artist_name
      self.artist.name
    end
end
