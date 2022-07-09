class ChangeDateInFromDatetimeToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :flocks, :date_in, :date
  end
end
