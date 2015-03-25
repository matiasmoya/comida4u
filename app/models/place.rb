class Place < ActiveRecord::Base
  has_many :menus
  belongs_to :user

  def address
    [street, city].compact.join(', ')
  end
end
