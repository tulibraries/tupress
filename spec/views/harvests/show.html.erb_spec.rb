require 'rails_helper'

RSpec.describe "harvests/show", type: :view do
  before(:each) do
    @harvest = assign(:harvest, Harvest.create!(
      :success_count => 2,
      :error_count => 3,
      :updated_count => 4,
      :created_count => 5,
      :updated_ids => "Updated Ids",
      :created_ids => "Created Ids"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Updated Ids/)
    expect(rendered).to match(/Created Ids/)
  end
end
