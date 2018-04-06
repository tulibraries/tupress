require 'rails_helper'

RSpec.describe "awards/new", type: :view do
  before(:each) do
    assign(:award, Award.new(
      :title => "MyString",
      :year => "MyString",
      :book_id => "MyString"
    ))
  end

  it "renders new award form" do
    render

    assert_select "form[action=?][method=?]", awards_path, "post" do

      assert_select "input#award_title[name=?]", "award[title]"

      assert_select "input#award_year[name=?]", "award[year]"

      assert_select "input#award_book_id[name=?]", "award[book_id]"
    end
  end
end
