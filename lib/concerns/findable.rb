module Findable
  module ClassMethods
    def find_by_name(name)
      self.all.detect{|i| i.name}
    end    
  end
end