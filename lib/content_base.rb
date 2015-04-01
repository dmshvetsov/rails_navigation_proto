##
# Experiment base class for navigation
#
# = Content base class
#
# Base class for app content
# Content can be ordered by position
# Models that inherited from ContentBase should have columns title, slug, position
#
class ContentBase < ActiveRecord::Base
  self.abstract_class = true

  def self.inherited(subclass)
    super
    subclass.class_exec do
      acts_as_list
      belongs_to :section
    end
  end
end

# Require all content models that inherets from ContetnBase
Dir[Rails.root.join('app', 'models', 'content', '*.rb')].each do |content_model|
  require_dependency content_model
end

