require "rails_helper"

RSpec.describe AlbumsController, :type => :routing do
  describe "routing usual requests" do

    it "routes to #index" do
      expect(:get => "/albums").to route_to("albums#index")
    end

    it "routes to #new" do
      expect(:get => "/albums/new").to route_to("albums#new")
    end

    it "routes to #show" do
      expect(:get => "/albums/1").to route_to("albums#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/albums/1/edit").to route_to("albums#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/albums").to route_to("albums#create")
    end

    it "routes to #update" do
      expect(:put => "/albums/1").to route_to("albums#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/albums/1").to route_to("albums#destroy", :id => "1")
    end

  end

  describe "routing api requests" do

    it "routes to #index as JSON" do
      expect(:get => "/albums.json").to route_to("albums#index", format: "json")
    end

    it "routes to #show as JSON" do
      expect(:get => "/albums/1.json").to route_to("albums#show", format: "json", :id => "1")
    end

    it "routes to #create as JSON" do
      expect(:post => "/albums.json").to route_to("albums#create", format: "json")
    end

    it "routes to #update as JSON" do
      expect(:put => "/albums/1.json").to route_to("albums#update", format: "json", :id => "1")
    end

    it "routes to #destroy as JSON" do
      expect(:delete => "/albums/1.json").to route_to("albums#destroy", format: "json", :id => "1")
    end
  end  
end
