require 'pry'
#require_relative "./concerns/memorable.rb"

class Song
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable
  include Findable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []




  def self.all
    @@songs
  end

  

  def artist=(artist)
    @artist = artist
  end

end
