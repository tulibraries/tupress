require 'rails_helper'

RSpec.describe "review_harvests/show", type: :view do
  before(:each) do
    @review_harvest = assign(:review_harvest, ReviewHarvest.create!(
      :error_ids => "MyText",
      :updated_ids => "MyText",
      :created_ids => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
