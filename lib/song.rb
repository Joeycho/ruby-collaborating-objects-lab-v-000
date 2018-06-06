class Song
    attr_accessor :name
    attr_accessor :artist
    @@all =[]

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      binding.pry
      @@all
    end

    def self.new_by_filename(filename)
      sfilename = filename[0..-5].split(" - ")
      song = self.new(sfilename[0])
      song.artist_name = sfilename[1]
      Artist.find_or_create_by_name(song.artist_name)

    end

    def artist_name
      self.artist.name
    end
end
