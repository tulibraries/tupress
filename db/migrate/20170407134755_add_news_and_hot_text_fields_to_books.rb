class AddNewsAndHotTextFieldsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :hot_text, :text
    add_column :books, :news_text, :text
  end
end
