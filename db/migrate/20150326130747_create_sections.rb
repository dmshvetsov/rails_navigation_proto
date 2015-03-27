class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :parent_id
      t.string :title
      t.string :slug
      t.integer :position

      t.timestamps null: false
    end
  end
end
