require 'rails_helper'

RSpec.describe "review_harvests/edit", type: :view do
  before(:each) do
    @review_harvest = assign(:review_harvest, ReviewHarvest.create!(
      :error_ids => "MyText",
      :updated_ids => "MyText",
      :created_ids => "MyText"
    ))
  end

  it "renders the edit review_harvest form" do
    render

    assert_select "form[action=?][method=?]", review_harvest_path(@review_harvest), "post" do

      assert_select "textarea#review_harvest_error_ids[name=?]", "review_harvest[error_ids]"

      assert_select "textarea#review_harvest_updated_ids[name=?]", "review_harvest[updated_ids]"

      assert_select "textarea#review_harvest_created_ids[name=?]", "review_harvest[created_ids]"
    end
  end
end
