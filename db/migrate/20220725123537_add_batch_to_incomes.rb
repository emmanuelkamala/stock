class AddBatchToIncomes < ActiveRecord::Migration[7.0]
  def change
    add_reference :incomes, :batch, foreign_key: true
  end
end
