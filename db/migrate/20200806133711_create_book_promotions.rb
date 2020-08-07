class CreateBookPromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :book_promotions do |t|
      t.belongs_to :book, index: true
      t.belongs_to :promotion, index: true
      t.timestamps
    end
    change_table :books do |t|
      t.text :promotion_ids
    end
    change_table :promotions do |t|
      t.text :book_ids
    end
  end
end
