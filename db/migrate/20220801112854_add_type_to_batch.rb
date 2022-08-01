class AddTypeToBatch < ActiveRecord::Migration[7.0]
  def change
    add_column :batches, :flock_type, :string
  end
end
