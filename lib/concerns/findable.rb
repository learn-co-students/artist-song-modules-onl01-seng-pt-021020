module Find_by_name
  def Find_by_name(name)
    @artists.detect{|a| a.name == name}
    
    def Find_by_name(song)
      @song.detect{|a| a.name == name}
    end
  end
end