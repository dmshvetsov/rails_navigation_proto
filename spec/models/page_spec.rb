require 'rails_helper'

RSpec.describe Page, type: :model do
  describe 'acts as tree' do
    it { is_expected.to respond_to :root }
    it { is_expected.to respond_to :children }
    it { is_expected.to respond_to :leaves }
    it { is_expected.to respond_to :parent }
  end

  describe 'acts as list' do
    it { is_expected.to respond_to :insert_at }
    it { is_expected.to respond_to :move_lower }
    it { is_expected.to respond_to :move_higher }
    it { is_expected.to respond_to :move_to_bottom }
    it { is_expected.to respond_to :move_to_top }
    it { is_expected.to respond_to :remove_from_list }

    it 'ordered by position' do
      products = Page.create(title: 'Products', slug: 'products', position: 0)
      news = Page.create(title: 'News', slug: 'news', position: 1)
      blog = Page.create(title: 'Blog', slug: 'blog', position: 2)
      expect(Page.all.to_a).to eq [products, news, blog]
    end
  end

end

