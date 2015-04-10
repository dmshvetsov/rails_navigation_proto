require 'rails_helper'

# in section.rb
# class Section < ContentBase
# end

RSpec.describe ContentBase, type: :model do
  it 'abstract class' do
    expect(ContentBase.abstract_class).to eq true
  end

  describe 'inheritance' do
    context 'when class inherited from ContentBase' do
      let(:section) { Section.new }
      let(:page) { Page.new }

      it 'set up has one page association in subclass' do
        section.page = page
        expect(section.page).to eq page
      end

      it 'set up delegation title to page' do
        page.title = 'Beleive in what you do'
        section.page = page
        expect(section.title).to eq 'Beleive in what you do'
      end
    end
  end

end
