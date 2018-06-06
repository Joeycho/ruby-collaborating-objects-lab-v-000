require 'pry'
class Artist
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    if self.all.select {|artist| artist.name == name} != {}
#      binding.pry
    else
#      binding.pry
    self.new(name)
    end
  end

  def add_song(song)
    Song.all << song
  end

end
