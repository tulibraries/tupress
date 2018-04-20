class ChangeAuthorBylineFieldFromStringToTextInBooks < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :author_byline, :text
  end
end
