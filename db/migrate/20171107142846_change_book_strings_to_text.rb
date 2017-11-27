class ChangeBookStringsToText < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :about_author, :text
    change_column :books, :subjects, :text
    change_column :books, :in_series, :text
    change_column :books, :price, :decimal, precision: 5, scale: 2
  end
end
