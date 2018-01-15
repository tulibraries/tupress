class BookChangeAuthorFieldToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :author, :text
  end
end
