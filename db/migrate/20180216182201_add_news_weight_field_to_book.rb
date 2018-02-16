class AddNewsWeightFieldToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :newsweight, :int
  end
end
