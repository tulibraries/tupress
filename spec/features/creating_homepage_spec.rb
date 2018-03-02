require 'rails_helper'

RSpec.feature "create homepage" do 
  scenario "content includes" do 
    visit root_path 

    expect(page).to have_content("Hot Off the Press!")
    expect(page).to have_content("In the News")
    expect(page).to have_css(".hotdiv", count: 4)
    # within(classname) do find ("id", text: "") end
    # expect(page).to have_css("div[id*='#home']")
    find(:css, "#scBlogContent p small").text

  end 
end