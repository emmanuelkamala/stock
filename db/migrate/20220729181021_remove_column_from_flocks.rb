class RemoveColumnFromFlocks < ActiveRecord::Migration[7.0]
  def change
    remove_column :flocks, :flock_stored, :string
  end
end
