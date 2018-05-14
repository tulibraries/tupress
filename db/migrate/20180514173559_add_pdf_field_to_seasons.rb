class AddPdfFieldToSeasons < ActiveRecord::Migration[5.0]
  def change
    add_column :seasons, :pdf, :string
  end
end
