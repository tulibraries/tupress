class AddIntroTextToPromotion < ActiveRecord::Migration[5.0]
  def change
    change_table :promotions do |t|
      t.text :intro_text
    end
  end
end
