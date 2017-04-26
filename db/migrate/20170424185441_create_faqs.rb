class CreateFaqs < ActiveRecord::Migration[5.0]
  def change
    create_table :faqs do |t|
      t.string :q
      t.text :a

      t.timestamps
    end
  end
end
