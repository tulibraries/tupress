class AddWeightFieldToBookNewsField < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :hotweight, :int
  end
end
