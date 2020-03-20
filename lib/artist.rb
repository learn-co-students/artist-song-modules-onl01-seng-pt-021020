require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each do |song|
      add_song(song)
    end
  end

end
