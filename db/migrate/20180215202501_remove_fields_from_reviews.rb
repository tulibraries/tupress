class RemoveFieldsFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :source, :string
    remove_column :reviews, :source_link, :string
    remove_column :reviews, :source_date, :string
  end
end
