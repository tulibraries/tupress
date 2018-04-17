require "rails_helper"

RSpec.describe HarvestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/harvests").to route_to("harvests#index")
    end

    it "routes to #new" do
      expect(:get => "/harvests/new").to route_to("harvests#new")
    end

    it "routes to #show" do
      expect(:get => "/harvests/1").to route_to("harvests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/harvests/1/edit").to route_to("harvests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/harvests").to route_to("harvests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/harvests/1").to route_to("harvests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/harvests/1").to route_to("harvests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/harvests/1").to route_to("harvests#destroy", :id => "1")
    end

  end
end
