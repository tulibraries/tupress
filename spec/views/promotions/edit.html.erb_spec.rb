require 'rails_helper'

RSpec.describe "promotions/edit", type: :view do
  before(:each) do
    @promotion = assign(:promotion, Promotion.create!(
      title: "MyString",
      pdf: "MyString"
    ))
  end

  it "renders the edit promotion form" do
    render

    assert_select "form[action=?][method=?]", promotion_path(@promotion), "post" do

      assert_select "input#promotion_title[name=?]", "promotion[title]"

      assert_select "input#promotion_pdf[name=?]", "promotion[pdf]"
    end
  end
end
