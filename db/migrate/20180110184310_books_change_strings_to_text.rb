class BooksChangeStringsToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :intro, :text
  	change_column :books, :blurb, :text
  	change_column :books, :excerpt, :text
  end
end
