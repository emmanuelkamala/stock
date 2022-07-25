class RemoveBatchNoFromFlocks < ActiveRecord::Migration[7.0]
  def change
    remove_column :flocks, :batch_no, :integer
  end
end
