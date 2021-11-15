class AddXmlIdsToPromotions < ActiveRecord::Migration[5.0]
  def change
    add_column :promotions, :xml_ids, :text
  end
end
