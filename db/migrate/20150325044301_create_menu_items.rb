class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.decimal :price, precision: 8, scale: 2
      t.string :name
      t.text :description
      t.references :menu, index: true

      t.timestamps
    end
  end
end
