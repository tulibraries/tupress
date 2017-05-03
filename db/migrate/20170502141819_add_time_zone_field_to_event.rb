class AddTimeZoneFieldToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :timezone, :string
  end
end
