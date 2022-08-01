class RemoveTypeFromFlocks < ActiveRecord::Migration[7.0]
  def change
    remove_reference :flocks, :type
  end
end
