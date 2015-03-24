class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :phone
      t.string :phone_b
      t.string :phone_c
      t.integer :score

      t.timestamps
    end
  end
end
