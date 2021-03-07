class Student < ActiveRecord::Base
  attribute :active, :boolean, default: false 
  def active?
    if self.active == true
      "active"
    else
      "inactive"
    end
  end
  
  def to_s
    self.first_name + " " + self.last_name
  end
end