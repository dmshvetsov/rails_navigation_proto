require 'rails_helper'

RSpec.describe "catalog_items/edit", type: :view do
  before(:each) do
    @catalog_item = assign(:catalog_item, CatalogItem.create!(
      :title => "MyString",
      :slug => "MyString",
      :body => "MyText",
      :price => 1,
      :position => 1,
      :section => nil
    ))
  end

  it "renders the edit catalog_item form" do
    render

    assert_select "form[action=?][method=?]", catalog_item_path(@catalog_item), "post" do

      assert_select "input#catalog_item_title[name=?]", "catalog_item[title]"

      assert_select "input#catalog_item_slug[name=?]", "catalog_item[slug]"

      assert_select "textarea#catalog_item_body[name=?]", "catalog_item[body]"

      assert_select "input#catalog_item_price[name=?]", "catalog_item[price]"

      assert_select "input#catalog_item_position[name=?]", "catalog_item[position]"

      assert_select "select#catalog_item_section_id[name=?]", "catalog_item[section_id]"
    end
  end
end
