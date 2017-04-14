class AddEditorsFieldToSeries < ActiveRecord::Migration[5.0]
  def change
    add_column :series, :editors, :string
  end
end
