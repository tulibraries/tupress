class AddPdfFieldToSubject < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :pdf, :string
  end
end
