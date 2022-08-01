class RemoveTypeFromExpenses < ActiveRecord::Migration[7.0]
  def change
    remove_reference :expenses, :type

  end
end
