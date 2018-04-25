class CreateReviewHarvests < ActiveRecord::Migration[5.0]
  def change
    create_table :review_harvests do |t|
      t.text :error_ids
      t.text :updated_ids
      t.text :created_ids

      t.timestamps
    end
  end
end
