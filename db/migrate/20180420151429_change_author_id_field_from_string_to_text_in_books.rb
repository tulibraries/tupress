class ChangeAuthorIdFieldFromStringToTextInBooks < ActiveRecord::Migration[5.0]
  def change	
  	change_column :books, :author_id, :text
  end
end
