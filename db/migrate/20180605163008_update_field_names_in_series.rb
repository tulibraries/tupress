class UpdateFieldNamesInSeries < ActiveRecord::Migration[5.0]
  def change
  	rename_column :series, :series, :series_name
  	rename_column :series, :series_id, :series_code
  end
end
