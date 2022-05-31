class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.datetime :date
      t.string :category
      t.integer :quantity
      t.integer :unit_price
      t.integer :total_amount
      t.text :description
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
