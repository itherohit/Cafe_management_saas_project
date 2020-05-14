class AddMenuIdToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :menu_id, :bigint
  end
end
