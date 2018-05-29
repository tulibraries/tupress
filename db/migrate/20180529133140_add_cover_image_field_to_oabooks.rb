class AddCoverImageFieldToOabooks < ActiveRecord::Migration[5.0]
  def change
    add_column :oabooks, :cover_image, :string
  end
end
