class ChangeAuthorPrefixFieldFromStringToTextInBooks < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :author_prefix, :text
  end
end
