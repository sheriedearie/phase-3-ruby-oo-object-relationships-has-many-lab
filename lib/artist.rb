require "pry"
class Artist
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @songs = []
    #   binding.pry
    end
  
    def add_song(song)
      @songs << song
      song.artist = self
    end
  
    def songs
      Song.all.select {|song| song.artist == self}
    end
  end 