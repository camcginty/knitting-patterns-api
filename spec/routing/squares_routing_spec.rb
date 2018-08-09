require "rails_helper"

RSpec.describe SquaresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/squares").to route_to("squares#index")
    end


    it "routes to #show" do
      expect(:get => "/squares/1").to route_to("squares#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/squares").to route_to("squares#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/squares/1").to route_to("squares#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/squares/1").to route_to("squares#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/squares/1").to route_to("squares#destroy", :id => "1")
    end

  end
end
