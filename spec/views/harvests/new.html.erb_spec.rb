require 'rails_helper'

RSpec.describe "harvests/new", type: :view do
  before(:each) do
    assign(:harvest, Harvest.new(
      :success_count => 1,
      :error_count => 1,
      :updated_count => 1,
      :created_count => 1,
      :updated_ids => "MyString",
      :created_ids => "MyString"
    ))
  end

  it "renders new harvest form" do
    render

    assert_select "form[action=?][method=?]", harvests_path, "post" do

      assert_select "input#harvest_success_count[name=?]", "harvest[success_count]"

      assert_select "input#harvest_error_count[name=?]", "harvest[error_count]"

      assert_select "input#harvest_updated_count[name=?]", "harvest[updated_count]"

      assert_select "input#harvest_created_count[name=?]", "harvest[created_count]"

      assert_select "input#harvest_updated_ids[name=?]", "harvest[updated_ids]"

      assert_select "input#harvest_created_ids[name=?]", "harvest[created_ids]"
    end
  end
end
