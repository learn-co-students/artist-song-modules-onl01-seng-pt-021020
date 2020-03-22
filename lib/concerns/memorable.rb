module Memorable
  
  def reset_all
    all.clear
  end
  
  def count
    all.count
  end
end

class Artist
  extend Memorable
end

class Song
  extend Memorable
end