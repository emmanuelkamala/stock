class RemoveTypeFromIncomes < ActiveRecord::Migration[7.0]
  def change
    remove_reference :incomes, :type

  end
end
