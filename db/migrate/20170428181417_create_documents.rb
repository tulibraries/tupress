class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :filename
      t.string :department
      t.string :format

      t.timestamps
    end
  end
end
