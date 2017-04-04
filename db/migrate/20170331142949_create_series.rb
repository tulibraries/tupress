class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
    	t.string :series_id
      t.string :series

      t.timestamps
    end
  end
end
