class Place < ActiveRecord::Base
  has_many :menus
  belongs_to :user
  belongs_to :category
  belongs_to :neighborhood

  def address
    [street, city].compact.join(', ')
  end
end
