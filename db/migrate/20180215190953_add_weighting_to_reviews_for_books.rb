class AddWeightingToReviewsForBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :weight, :int
  end
end
