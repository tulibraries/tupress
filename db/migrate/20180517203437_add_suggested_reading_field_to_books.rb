class AddSuggestedReadingFieldToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :suggested_reading, :string
  end
end
