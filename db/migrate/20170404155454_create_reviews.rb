class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :title_id
      t.string :author
      t.text :review
      t.string :source
      t.string :source_link
      t.string :source_date

      t.timestamps
    end
  end
end
