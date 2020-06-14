class AddActiveToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :active, :boolean, default: false
  end
end
