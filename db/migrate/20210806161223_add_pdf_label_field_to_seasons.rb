class AddPdfLabelFieldToSeasons < ActiveRecord::Migration[5.0]
  def change
    add_column :seasons, :pdf_label, :string
  end
end
