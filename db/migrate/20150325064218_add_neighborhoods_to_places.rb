class AddNeighborhoodsToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :neighborhood, index: true
  end
end
