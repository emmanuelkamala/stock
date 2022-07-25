class AddBatchToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenses, :batch, foreign_key: true
  end
end
