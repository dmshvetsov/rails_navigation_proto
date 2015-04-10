class ContentBase < ActiveRecord::Base
  self.abstract_class = true

  def self.inherited subclass
    super

    subclass.class_exec do
      has_one :page, as: :content
      delegate :title, to: :page
    end
  end

end
