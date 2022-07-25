class RemoveFlockFromIncome < ActiveRecord::Migration[7.0]
  def change
    remove_column :incomes, :flock_id, :bigint
  end
end
