class ChangeAuthorSuffixFieldFromStringToTextInBooks < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :author_suffix, :text
  end
end
