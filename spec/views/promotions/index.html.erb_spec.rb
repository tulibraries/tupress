require 'rails_helper'

RSpec.describe "promotions/index", type: :view do
  before(:each) do
    assign(:promotions, [
      Promotion.create!(
        title: "Title",
        pdf: "Pdf"
      ),
      Promotion.create!(
        title: "Title",
        pdf: "Pdf"
      )
    ])
  end

  it "renders a list of promotions" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Pdf".to_s, count: 2
  end
end
