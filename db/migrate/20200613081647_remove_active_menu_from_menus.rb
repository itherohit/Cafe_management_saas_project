class RemoveActiveMenuFromMenus < ActiveRecord::Migration[6.0]
  def change

    remove_column :menus, :active_menu, :boolean
  end
end
