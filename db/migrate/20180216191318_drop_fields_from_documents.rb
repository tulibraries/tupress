class DropFieldsFromDocuments < ActiveRecord::Migration[5.0]
  def change
  	remove_column :documents, :file_file_name, :string
    remove_column :documents, :file_content_type, :string
    remove_column :documents, :file_file_size, :integer
    remove_column :documents, :file_updated_at, :datetime
  end
end
