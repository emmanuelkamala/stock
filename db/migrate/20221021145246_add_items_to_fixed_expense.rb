class AddItemsToFixedExpense < ActiveRecord::Migration[7.0]
  def change
    add_column :fixed_expenses, :quantity, :integer
    add_column :fixed_expenses, :description, :text
    add_column :fixed_expenses, :total_cost, :integer

  end
end
