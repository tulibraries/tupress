class AddContactToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :department_contact, :string
    add_column :documents, :contact_email, :string
  end
end
