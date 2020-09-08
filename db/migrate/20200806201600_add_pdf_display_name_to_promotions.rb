class AddPdfDisplayNameToPromotions < ActiveRecord::Migration[5.0]
  def change
    add_column :promotions, :pdf_display_name, :string
  end
end
