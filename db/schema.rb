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

ActiveRecord::Schema.define(version: 20130429181053) do

  create_table "commits", force: true do |t|
    t.text     "commit"
    t.string   "repo"
    t.string   "commit_timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dones", force: true do |t|
    t.text     "gist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.string   "title"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "entry_url"
    t.boolean  "tech"
  end

  create_table "qscores", force: true do |t|
    t.integer  "resource_id"
    t.integer  "tag_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resource_id"
  end

  add_index "taggings", ["article_id"], name: "index_taggings_on_article_id"
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
