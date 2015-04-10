class AddContentIdColumnToPages < ActiveRecord::Migration
  def change
    add_reference :pages, :content, polymorphic: true, index: true
  end
end
