class AddTitleToHighlight < ActiveRecord::Migration[5.0]
  def change
    add_column :highlights, :title, :string
  end
end
