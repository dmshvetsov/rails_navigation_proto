class Page < ActiveRecord::Base
  has_closure_tree order: 'position'

  acts_as_list

  belongs_to :content, polymorphic: true

end
