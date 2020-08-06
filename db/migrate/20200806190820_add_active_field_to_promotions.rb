class AddActiveFieldToPromotions < ActiveRecord::Migration[5.0]
  def change
    add_column :promotions, :active, :boolean
  end
end
