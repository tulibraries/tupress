class AddHomePageFieldToNewsItem < ActiveRecord::Migration[5.0]
  def change
    add_column :news_items, :homepage, :string
  end
end
