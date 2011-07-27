class Person < ActiveRecord::Base

  def touch
    self.update_attribute(:touched, true)
  end
end
