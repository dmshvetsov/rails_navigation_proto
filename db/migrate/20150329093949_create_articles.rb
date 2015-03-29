class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.integer :position

      t.timestamps null: false
    end
  end
end
