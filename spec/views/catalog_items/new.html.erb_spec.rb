require 'rails_helper'

RSpec.describe "catalog_items/new", type: :view do
  before(:each) do
    assign(:catalog_item, CatalogItem.new(
      :title => "MyString",
      :slug => "MyString",
      :body => "MyText",
      :price => 1,
      :position => 1,
      :section => nil
    ))
  end

  it "renders new catalog_item form" do
    render

    assert_select "form[action=?][method=?]", catalog_items_path, "post" do

      assert_select "input#catalog_item_title[name=?]", "catalog_item[title]"

      assert_select "input#catalog_item_slug[name=?]", "catalog_item[slug]"

      assert_select "textarea#catalog_item_body[name=?]", "catalog_item[body]"

      assert_select "input#catalog_item_price[name=?]", "catalog_item[price]"

      assert_select "input#catalog_item_position[name=?]", "catalog_item[position]"

      assert_select "input#catalog_item_section_id[name=?]", "catalog_item[section_id]"
    end
  end
end
