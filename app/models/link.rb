class Link < ActiveRecord::Base

  after_create :generate_short_path

  def generate_short_path
    self.short_path = self.id.to_s(36)
    self.save
  end


  def display_short_path
    'http://localhost:3000/' + self.short_path
  end

end
