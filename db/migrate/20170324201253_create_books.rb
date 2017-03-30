class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :book_id
      t.string :title
	  	t.string :subtitle
      t.string :author
      t.string :about_author
  		t.string :intro
	  	t.string :blurb
	  	t.string :excerpt
	  	t.string :is_guide
	  	t.string :cover_image
	  	t.string :format
	  	t.string :isbn
	  	t.string :ean
	  	t.string :pub_date
	  	t.text :binding
	  	t.text :description
	  	t.text :reviews
	  	t.text :categories
	  	t.text :contents
	  	t.decimal :price, :precision => 5, :scale => 2

      t.timestamps
    end
    add_attachment :books
  end
end
