require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :title => "MyString",
      :slug => "MyString",
      :body => "MyText",
      :position => 1
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "input#article_slug[name=?]", "article[slug]"

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_position[name=?]", "article[position]"
    end
  end
end
