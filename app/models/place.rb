class Place < ActiveRecord::Base

  def address
    [street, city].compact.join(', ')
  end
end
