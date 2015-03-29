require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "MyString",
      :slug => "MyString",
      :body => "MyText",
      :position => 1
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "input#article_slug[name=?]", "article[slug]"

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_position[name=?]", "article[position]"
    end
  end
end
