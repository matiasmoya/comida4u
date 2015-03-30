class CreatePlaceImages < ActiveRecord::Migration
  def change
    create_table :place_images do |t|
      t.references :place, index: true

      t.timestamps
    end
  end
end
