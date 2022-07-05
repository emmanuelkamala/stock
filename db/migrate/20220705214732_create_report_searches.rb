class CreateReportSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :report_searches do |t|

      t.timestamps
    end
  end
end
