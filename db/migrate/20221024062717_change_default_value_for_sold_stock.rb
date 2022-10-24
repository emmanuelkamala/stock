class ChangeDefaultValueForSoldStock < ActiveRecord::Migration[7.0]
  def change 
    change_column_default :flocks, :died_stock, default: 0
  end
end
