class AddSectionAssocColumnToArticle < ActiveRecord::Migration
  def change
    add_reference :articles, :section, index: true, foreign_key: true
  end
end
