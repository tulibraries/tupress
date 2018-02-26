class AddWeightFieldToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :weight, :integer
  end
end
