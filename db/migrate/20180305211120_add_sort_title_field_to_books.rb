class AddSortTitleFieldToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :sort_title, :string
  end
end
