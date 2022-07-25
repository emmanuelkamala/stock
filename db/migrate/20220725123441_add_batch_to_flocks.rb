class AddBatchToFlocks < ActiveRecord::Migration[7.0]
  def change
    add_reference :flocks, :batch, foreign_key: true
  end
end
