class CreateConferences < ActiveRecord::Migration[5.0]
  def change
    create_table :conferences do |t|
      t.string  :month
      t.string  :conference
      t.string  :link
      t.string  :venue
      t.string  :location
      t.string  :dates
      t.string  :booth

      t.timestamps
    end
  end
end
