class RemoveFlockFromExpenses < ActiveRecord::Migration[7.0]
  def change
    remove_column :expenses, :flock_id, :bigint
  end
end
