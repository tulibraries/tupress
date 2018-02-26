class AddNewsFieldToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :news, :string
  end
end
