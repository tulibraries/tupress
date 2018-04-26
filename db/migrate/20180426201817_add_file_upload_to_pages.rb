class AddFileUploadToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :file, :string
  end
end
