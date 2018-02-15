class Changereviewsauthorfield < ActiveRecord::Migration[5.0]
  def change
  	change_column :reviews, :author, :text
  end
end
