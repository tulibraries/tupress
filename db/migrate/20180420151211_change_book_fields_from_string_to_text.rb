class ChangeBookFieldsFromStringToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :author_first, :text
  	change_column :books, :author_last, :text
  end
end
