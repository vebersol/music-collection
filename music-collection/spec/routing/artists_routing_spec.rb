require "rails_helper"

RSpec.describe ArtistsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/artists").to route_to("artists#index")
    end

    it "routes to #new" do
      expect(:get => "/artists/new").to route_to("artists#new")
    end

    it "routes to #show" do
      expect(:get => "/artists/1").to route_to("artists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/artists/1/edit").to route_to("artists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/artists").to route_to("artists#create")
    end

    it "routes to #update" do
      expect(:put => "/artists/1").to route_to("artists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/artists/1").to route_to("artists#destroy", :id => "1")
    end

  end

  describe "routing api requests" do

    it "routes to #index as JSON" do
      expect(:get => "/artists.json").to route_to("artists#index", format: "json")
    end

    it "routes to #show as JSON" do
      expect(:get => "/artists/1.json").to route_to("artists#show", format: "json", :id => "1")
    end

    it "routes to #create as JSON" do
      expect(:post => "/artists.json").to route_to("artists#create", format: "json")
    end

    it "routes to #update as JSON" do
      expect(:put => "/artists/1.json").to route_to("artists#update", format: "json", :id => "1")
    end

    it "routes to #destroy as JSON" do
      expect(:delete => "/artists/1.json").to route_to("artists#destroy", format: "json", :id => "1")
    end
  end  
end
