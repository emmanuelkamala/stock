class AddSoldStockToFlock < ActiveRecord::Migration[7.0]
  def change
    add_column :flocks, :sold_stock, :integer, default: 0
  end
end
