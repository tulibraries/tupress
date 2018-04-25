require 'rails_helper'

RSpec.describe "review_harvests/index", type: :view do
  before(:each) do
    assign(:review_harvests, [
      ReviewHarvest.create!(
        :error_ids => "MyText",
        :updated_ids => "MyText",
        :created_ids => "MyText"
      ),
      ReviewHarvest.create!(
        :error_ids => "MyText",
        :updated_ids => "MyText",
        :created_ids => "MyText"
      )
    ])
  end

  it "renders a list of review_harvests" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
