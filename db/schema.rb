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


ActiveRecord::Schema.define(version: 20171108182441) do

  create_table "agencies", force: :cascade do |t|
    t.string   "title"
    t.string   "contact"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "country"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.decimal  "price",           precision: 6, scale: 2
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "award"
    t.string   "hot"
    t.string   "news"
    t.text     "hot_text"
    t.text     "news_text"
    t.string   "catalog"
    t.string   "course_adoption"
    t.string   "highlight"
    t.string   "highlight_image"
    t.string   "award_year"
  end

  create_table "catalogs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conferences", force: :cascade do |t|
    t.string   "month"
    t.string   "conference"
    t.string   "link"
    t.string   "venue"
    t.string   "location"
    t.string   "dates"
    t.string   "booth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "year"
  end

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.string   "filename"
    t.string   "department"
    t.string   "format"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "department_contact"
    t.string   "contact_email"
  end

  create_table "entries", force: :cascade do |t|
    t.string   "title"
    t.datetime "published"
    t.text     "description"
    t.text     "content"
    t.string   "url"
    t.string   "author"
    t.integer  "feed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "description"
    t.string   "where"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "startdate"
    t.date     "enddate"
    t.time     "time"
    t.string   "timezone"
    t.time     "endtime"
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "q"
    t.text     "a"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feeds", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "journals", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oabooks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "isbn"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "content2"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "position"
    t.string   "department"
    t.string   "position_description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "document_contact"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "region"
    t.string   "rights"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reps", force: :cascade do |t|
    t.string   "company"
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "address3"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "coverage"
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
    t.string   "editors"
    t.string   "founder"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "subject_id"
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
