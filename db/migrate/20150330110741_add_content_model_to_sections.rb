class AddContentModelToSections < ActiveRecord::Migration
  def change
    add_column :sections, :content_model, :string
  end
end
