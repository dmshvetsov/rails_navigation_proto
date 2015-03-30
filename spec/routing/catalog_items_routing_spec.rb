require "rails_helper"

RSpec.describe CatalogItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/catalog_items").to route_to("catalog_items#index")
    end

    it "routes to #new" do
      expect(:get => "/catalog_items/new").to route_to("catalog_items#new")
    end

    it "routes to #show" do
      expect(:get => "/catalog_items/1").to route_to("catalog_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/catalog_items/1/edit").to route_to("catalog_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/catalog_items").to route_to("catalog_items#create")
    end

    it "routes to #update" do
      expect(:put => "/catalog_items/1").to route_to("catalog_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/catalog_items/1").to route_to("catalog_items#destroy", :id => "1")
    end

  end
end
