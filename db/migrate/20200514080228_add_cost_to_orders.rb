class AddCostToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :cost, :float
  end
end
