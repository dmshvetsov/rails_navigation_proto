require 'rails_helper'

RSpec.describe "catalog_items/show", type: :view do
  before(:each) do
    @catalog_item = assign(:catalog_item, CatalogItem.create!(
      :title => "Title",
      :slug => "Slug",
      :body => "MyText",
      :price => 1,
      :position => 2,
      :section => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
