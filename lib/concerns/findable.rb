module Concerns::Findable
  
  def find_by_name(name)
    self.all.detect{|object| object.name == name}
  end
  
  def find_or_create_by_name(name)
  if self.find_by_name(name) != nil
      return self.find_by_name(name)
    else 
      self.create(name)
     end
  end
  
  
end