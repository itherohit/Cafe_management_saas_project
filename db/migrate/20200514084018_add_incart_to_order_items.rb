class AddIncartToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :incart, :int
  end
end
