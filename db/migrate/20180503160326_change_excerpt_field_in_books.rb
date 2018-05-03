class ChangeExcerptFieldInBooks < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :excerpt, :string
  end
end
