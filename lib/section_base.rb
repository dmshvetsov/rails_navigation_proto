##
# Experiment base class for navigation
#
# = SectionBase
#
# SectionBase it's abstract model to build concrete models to store pages structure of an app.
# Sections can be becomes tree.
# Sections can be ordered.
#
class SectionBase < ActiveRecord::Base
  self.abstract_class = true

  def self.inherited(subclass)
    super
    subclass.class_exec do
      has_closure_tree
      acts_as_list scope: :parent
    end
  end
end
