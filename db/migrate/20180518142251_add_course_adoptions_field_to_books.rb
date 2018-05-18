class AddCourseAdoptionsFieldToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :course_adoptions, :boolean
  end
end
