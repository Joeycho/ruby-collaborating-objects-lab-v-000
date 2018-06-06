class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.find_or_create_by_name(name)
    self.new(name)
  end
end
