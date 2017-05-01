class AddDocContactLookupFieldToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :document_contact, :string
  end
end
