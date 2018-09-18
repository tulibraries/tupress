class AddPdfFieldToBrochure < ActiveRecord::Migration[5.0]
  def change
    add_column :brochures, :pdf, :string
  end
end
