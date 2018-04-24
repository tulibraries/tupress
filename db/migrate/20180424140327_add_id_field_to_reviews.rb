class AddIdFieldToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :review_id, :string
  end
end
