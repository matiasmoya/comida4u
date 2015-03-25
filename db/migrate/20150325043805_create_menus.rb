class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.references :place, index: true

      t.timestamps
    end
  end
end
