class Page < ActiveRecord::Base
  has_closure_tree order: 'position'

  acts_as_list

  belongs_to :content, polymorphic: true

  validates :title, :slug, presence: true

end
