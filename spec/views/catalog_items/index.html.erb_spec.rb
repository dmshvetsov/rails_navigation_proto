require 'rails_helper'

RSpec.describe "catalog_items/index", type: :view do
  before(:each) do
    assign(:catalog_items, [
      CatalogItem.create!(
        :title => "Title",
        :slug => "Slug",
        :body => "MyText",
        :price => 1,
        :position => 2,
        :section => nil
      ),
      CatalogItem.create!(
        :title => "Title",
        :slug => "Slug",
        :body => "MyText",
        :price => 1,
        :position => 2,
        :section => nil
      )
    ])
  end

  it "renders a list of catalog_items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
