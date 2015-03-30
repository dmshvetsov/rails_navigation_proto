require 'rails_helper'

RSpec.describe "CatalogItems", type: :request do
  describe "GET /catalog_items" do
    it "works! (now write some real specs)" do
      get catalog_items_path
      expect(response).to have_http_status(200)
    end
  end
end
