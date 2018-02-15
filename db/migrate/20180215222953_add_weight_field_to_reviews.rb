class AddWeightFieldToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :weight, :int
  end
end
