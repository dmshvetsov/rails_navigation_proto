##
# Experiment base class for navigation
#
# = SectionBase
#
# SectionBase it's abstract model to build concrete models to store pages structure of an app.
# Sections can be becomes tree.
# Sections can be ordered.
# Models that inherited from ContentBase should have columns title, slug, position and parent_id
#
class SectionBase < ActiveRecord::Base
  self.abstract_class = true

  def self.inherited(subclass)
    super
    subclass.class_exec do
      has_closure_tree
      acts_as_list scope: :parent
      ContentBase.subclasses.each do |content_class|
        has_many content_class.table_name.to_sym
      end
    end
  end

  def content
    self.send(content_model.pluralize)
  end
end
