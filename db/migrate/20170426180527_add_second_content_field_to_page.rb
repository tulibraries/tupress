class AddSecondContentFieldToPage < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :content2, :string
  end
end
