class ChangeRetirementDateFromDatetimeToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :flocks, :retirement_date, :date
  end
end
