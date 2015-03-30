class Place < ActiveRecord::Base
  has_many :menus
  belongs_to :user
  belongs_to :category, inverse_of: :places
  belongs_to :neighborhood, inverse_of: :places

  validates :name, :address, :city, :phone, :category, :neighborhood, presence: true

  def address
    [street, city].compact.join(', ')
  end
end
