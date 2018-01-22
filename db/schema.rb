ActiveRecord::Schema.define(version: 20180122042047) do

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
    t.text "url"
    t.integer "likes", default: 0
    t.integer "article_id"
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
