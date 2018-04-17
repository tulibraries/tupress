require 'rails_helper'

RSpec.describe "harvests/index", type: :view do
  before(:each) do
    assign(:harvests, [
      Harvest.create!(
        :success_count => 2,
        :error_count => 3,
        :updated_count => 4,
        :created_count => 5,
        :updated_ids => "Updated Ids",
        :created_ids => "Created Ids"
      ),
      Harvest.create!(
        :success_count => 2,
        :error_count => 3,
        :updated_count => 4,
        :created_count => 5,
        :updated_ids => "Updated Ids",
        :created_ids => "Created Ids"
      )
    ])
  end

  it "renders a list of harvests" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Updated Ids".to_s, :count => 2
    assert_select "tr>td", :text => "Created Ids".to_s, :count => 2
  end
end
