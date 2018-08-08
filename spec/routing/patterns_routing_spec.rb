require "rails_helper"

RSpec.describe PatternsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/patterns").to route_to("patterns#index")
    end


    it "routes to #show" do
      expect(:get => "/patterns/1").to route_to("patterns#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/patterns").to route_to("patterns#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/patterns/1").to route_to("patterns#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/patterns/1").to route_to("patterns#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patterns/1").to route_to("patterns#destroy", :id => "1")
    end

  end
end
