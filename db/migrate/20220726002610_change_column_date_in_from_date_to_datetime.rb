class ChangeColumnDateInFromDateToDatetime < ActiveRecord::Migration[7.0]
  def change
    change_column :flocks, :date_in, :datetime
  end
end
