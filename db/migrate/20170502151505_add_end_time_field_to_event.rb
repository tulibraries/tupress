class AddEndTimeFieldToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :endtime, :time
  end
end
