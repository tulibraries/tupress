class AddDescriptionToSeries < ActiveRecord::Migration[5.0]
  def change
    add_column :series, :description, :text
  end
end
