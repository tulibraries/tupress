class ChangeFieldsOabooks < ActiveRecord::Migration[5.0]
  def change

  	remove_column :oabooks, :cover_image_file_name, :string
  	remove_column :oabooks, :cover_image_content_type, :string
  	remove_column :oabooks, :cover_image_file_size, :string
  	remove_column :oabooks, :cover_image_updated_at, :string

  end
end
