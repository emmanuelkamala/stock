class CreateFixedExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :fixed_expenses do |t|
      t.date :date_in
      t.string :type_of_expense
      t.integer :cost

      t.timestamps
    end
  end
end
