class CreateCatalogItems < ActiveRecord::Migration
  def change
    create_table :catalog_items do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.integer :price
      t.integer :position
      t.references :section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
