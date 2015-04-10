class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.integer :parent_id
      t.integer :position

      t.timestamps null: false
    end
  end
end
