class AddStatusToFlocks < ActiveRecord::Migration[7.0]
  def change
    add_column :flocks, :status, :string
  end
end
