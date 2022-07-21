class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :flocks, :current_stock, :died_stock
  end
end
