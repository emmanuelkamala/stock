class ChangeDateInIncomeFromDatetimeToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :incomes, :date, :date
  end
end
