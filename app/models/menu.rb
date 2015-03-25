class Menu < ActiveRecord::Base
  belongs_to :place
  has_many :menu_items
end
