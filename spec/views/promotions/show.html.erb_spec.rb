require 'rails_helper'

RSpec.describe "promotions/show", type: :view do
  before(:each) do
    @promotion = assign(:promotion, Promotion.create!(
      title: "Title",
      pdf: "Pdf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Pdf/)
  end
end
