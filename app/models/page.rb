class Page < ActiveRecord::Base
  has_closure_tree order: 'position'
  acts_as_list
end
