class AddImageFieldToSeries < ActiveRecord::Migration[5.0]
  def change
    add_column :series, :image, :string
  end
end
