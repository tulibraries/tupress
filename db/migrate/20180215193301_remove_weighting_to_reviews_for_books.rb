class RemoveWeightingToReviewsForBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :weight, :int
  end
end
