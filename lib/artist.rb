require 'pry'
class Artist
  attr_accessor :name, :songs, :artist
    @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @artist = artist
  end
    def add_song(song)
      @songs<< song
    end
    def self.all
      @@all
    end
    def save
      @@all << self
    end
  def self.find_or_create_by_name (name)
    if @@all.detect {|i| i.name == name}
      @@all.detect {|i| i.name == name}
    else
      self.create(name)
    end
  end
  def self.create(name)
      artist = self.new(name)
      artist
  end
  def print_songs
      @@all.name
  end
end
