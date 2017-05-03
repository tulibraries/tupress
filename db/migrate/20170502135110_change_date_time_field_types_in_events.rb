class ChangeDateTimeFieldTypesInEvents < ActiveRecord::Migration[5.0]
  def change
  	change_column :events, :startdate, :date
  	change_column :events, :enddate, :date
  	change_column :events, :time, :time
  end
end
