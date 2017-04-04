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

ActiveRecord::Schema.define(version: 20170404160652) do

  create_table "books", force: :cascade do |t|
    t.string   "book_id"
    t.string   "title"
    t.string   "subtitle"
    t.string   "author"
    t.string   "intro"
    t.string   "blurb"
    t.string   "excerpt"
    t.string   "is_guide"
    t.string   "cover_image"
    t.string   "format"
    t.string   "isbn"
    t.string   "ean"
    t.string   "pub_date"
    t.text     "binding"
    t.text     "description"
    t.text     "reviews"
    t.text     "contents"
    t.text     "about_author"
    t.text     "subjects"
    t.string   "in_series"
    t.decimal  "price",        precision: 6, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "award"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.string   "title_id"
    t.string   "author"
    t.text     "review"
    t.string   "source"
    t.string   "source_link"
    t.string   "source_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "series", force: :cascade do |t|
    t.string   "series_id"
    t.string   "series"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "subject_id"
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
