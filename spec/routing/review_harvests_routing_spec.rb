require "rails_helper"

RSpec.describe ReviewHarvestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/review_harvests").to route_to("review_harvests#index")
    end

    it "routes to #new" do
      expect(:get => "/review_harvests/new").to route_to("review_harvests#new")
    end

    it "routes to #show" do
      expect(:get => "/review_harvests/1").to route_to("review_harvests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/review_harvests/1/edit").to route_to("review_harvests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/review_harvests").to route_to("review_harvests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/review_harvests/1").to route_to("review_harvests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/review_harvests/1").to route_to("review_harvests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/review_harvests/1").to route_to("review_harvests#destroy", :id => "1")
    end

  end
end
