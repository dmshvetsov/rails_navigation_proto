require 'rails_helper'

RSpec.describe Section, type: :model do
  describe 'acts as list' do
    it { is_expected.to respond_to :insert_at }
    it { is_expected.to respond_to :move_lower }
    it { is_expected.to respond_to :move_higher }
    it { is_expected.to respond_to :move_to_bottom }
    it { is_expected.to respond_to :move_to_top }
    it { is_expected.to respond_to :remove_from_list }
  end

  describe 'acts as tree' do
    it { is_expected.to respond_to :root }
    it { is_expected.to respond_to :children }
    it { is_expected.to respond_to :leaves }
    it { is_expected.to respond_to :parent }
  end

  describe 'associations' do
    it { is_expected.to respond_to :content }

    it 'has many content' do
      # TODO: make polymorphic association
      section = Section.create(title: 'Box', slug: 'box', content_model: 'articles')
      3.times do
        section.content.create(title: 'Sample article')
      end
      expect(section.content.size).to eq 3
    end
  end
end
