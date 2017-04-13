class AddNewsAndHotFieldsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :hot, :char
    add_column :books, :news, :char
  end
end
