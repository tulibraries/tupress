require 'rails_helper'

RSpec.describe "Harvests", type: :request do
  describe "GET /harvests" do
    it "works! (now write some real specs)" do
      get harvests_path
      expect(response).to have_http_status(200)
    end
  end
end
