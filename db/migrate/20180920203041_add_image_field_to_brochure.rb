class AddImageFieldToBrochure < ActiveRecord::Migration[5.0]
  def change
    add_column :brochures, :image, :string
  end
end
