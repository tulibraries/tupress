class AddCourseAdoptionFieldToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :course_adoption, :char
  end
end
