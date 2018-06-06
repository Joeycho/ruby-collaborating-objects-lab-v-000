class Artist
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all.select {|artist| artist.name == name}
    else
    self.new(name)
    end
  end
end
