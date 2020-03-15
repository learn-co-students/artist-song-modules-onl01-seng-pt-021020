require_relative '../lib/concerns/memorable'
#require_relative '../lib/concerns/findable'
require 'pry'

class Song
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end


  extend Memorable::ClassMethods
  extend Findable
  include Paramable
end
