class AddImageFieldToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :image, :string
  end
end
