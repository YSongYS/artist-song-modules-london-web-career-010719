module Findable

  attr_accessor :name

  def initialize (name)
    @name = name
    self.class.all << self 
  end


  def find_by_name(name)
    self.class.all.detect{|a| a.name == name}
  end

end
