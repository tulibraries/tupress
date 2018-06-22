class AddPathFieldToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :path, :string
  end
end
