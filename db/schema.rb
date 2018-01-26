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

ActiveRecord::Schema.define(version: 20180126112641) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.integer "likes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "publishing"
  end

  create_table "images", force: :cascade do |t|
    t.string "headline"
    t.integer "ordering"
    t.string "url"
    t.integer "likes", default: 0
    t.integer "article_id"
    t.string "url_file_name"
    t.string "url_content_type"
    t.integer "url_file_size"
    t.datetime "url_updated_at"
    t.index ["article_id"], name: "index_images_on_article_id"
  end

  create_table "texts", force: :cascade do |t|
    t.string "headline"
    t.integer "ordering"
    t.text "passage"
    t.integer "likes", default: 0
    t.integer "article_id"
    t.index ["article_id"], name: "index_texts_on_article_id"
  end

end
