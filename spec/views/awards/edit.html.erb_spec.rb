require 'rails_helper'

RSpec.describe "awards/edit", type: :view do
  before(:each) do
    @award = assign(:award, Award.create!(
      :title => "MyString",
      :year => "MyString",
      :book_id => "MyString"
    ))
  end

  it "renders the edit award form" do
    render

    assert_select "form[action=?][method=?]", award_path(@award), "post" do

      assert_select "input#award_title[name=?]", "award[title]"

      assert_select "input#award_year[name=?]", "award[year]"

      assert_select "input#award_book_id[name=?]", "award[book_id]"
    end
  end
end
