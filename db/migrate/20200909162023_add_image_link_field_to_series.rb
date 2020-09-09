class AddImageLinkFieldToSeries < ActiveRecord::Migration[5.0]
  def change
    add_column :series, :image_link, :string
  end
end
