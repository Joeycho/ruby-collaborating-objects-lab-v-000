require 'pry'
class MP3Importer
  attr_accessor :path

def initialize(path)
  @path = path
end

def files
  binding.pry
  files = Dir.entries(self.path,'.mp3')

end

def import

end

end
