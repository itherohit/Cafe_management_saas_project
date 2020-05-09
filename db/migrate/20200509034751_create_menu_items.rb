class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :item_name
      t.text :img_url
      t.float :price
      t.text :item_desciption

      t.timestamps
    end
  end
end
