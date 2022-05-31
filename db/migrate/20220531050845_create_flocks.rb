class CreateFlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :flocks do |t|
      t.integer :batch_no
      t.datetime :date_in
      t.datetime :retirement_date
      t.string :source
      t.string :flock_stored
      t.integer :initial_stock
      t.integer :current_stock
      t.integer :age
      t.text :notes
      t.references :status, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
