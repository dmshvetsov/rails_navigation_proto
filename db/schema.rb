# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150410135012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "page_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "page_hierarchies", ["ancestor_id", "descendant_id", "generations"], name: "page_anc_desc_idx", unique: true, using: :btree
  add_index "page_hierarchies", ["descendant_id"], name: "page_desc_idx", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.integer  "parent_id"
    t.integer  "position"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "content_id"
    t.string   "content_type"
  end

  add_index "pages", ["content_type", "content_id"], name: "index_pages_on_content_type_and_content_id", using: :btree

  create_table "sections", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
