require 'rails_helper'

RSpec.describe "ReviewHarvests", type: :request do
  describe "GET /review_harvests" do
    it "works! (now write some real specs)" do
      get review_harvests_path
      expect(response).to have_http_status(200)
    end
  end
end
