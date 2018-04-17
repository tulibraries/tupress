require 'rails_helper'

RSpec.describe "harvests/edit", type: :view do
  before(:each) do
    @harvest = assign(:harvest, Harvest.create!(
      :success_count => 1,
      :error_count => 1,
      :updated_count => 1,
      :created_count => 1,
      :updated_ids => "MyString",
      :created_ids => "MyString"
    ))
  end

  it "renders the edit harvest form" do
    render

    assert_select "form[action=?][method=?]", harvest_path(@harvest), "post" do

      assert_select "input#harvest_success_count[name=?]", "harvest[success_count]"

      assert_select "input#harvest_error_count[name=?]", "harvest[error_count]"

      assert_select "input#harvest_updated_count[name=?]", "harvest[updated_count]"

      assert_select "input#harvest_created_count[name=?]", "harvest[created_count]"

      assert_select "input#harvest_updated_ids[name=?]", "harvest[updated_ids]"

      assert_select "input#harvest_created_ids[name=?]", "harvest[created_ids]"
    end
  end
end
