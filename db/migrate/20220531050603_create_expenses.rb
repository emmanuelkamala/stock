class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :category
      t.integer :quantity
      t.integer :unit_price
      t.integer :total_amount
      t.text :description
      t.references :batch, foreign_key: true

      t.timestamps
    end
  end
end
