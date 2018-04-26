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

ActiveRecord::Schema.define(version: 20180426201817) do

  create_table "administrators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "agencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "awards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "title"
    t.string   "year"
    t.string   "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "book_id"
    t.string   "title"
    t.string   "subtitle"
    t.text     "author",          limit: 65535
    t.text     "about_author",    limit: 65535
    t.text     "intro",           limit: 65535
    t.text     "blurb",           limit: 65535
    t.text     "excerpt",         limit: 65535
    t.string   "is_guide"
    t.string   "cover_image"
    t.string   "format"
    t.string   "isbn"
    t.string   "ean"
    t.string   "pub_date"
    t.text     "in_series",       limit: 65535
    t.text     "binding",         limit: 65535
    t.text     "description",     limit: 65535
    t.text     "reviews",         limit: 65535
    t.text     "subjects",        limit: 65535
    t.text     "contents",        limit: 65535
    t.decimal  "price",                         precision: 5, scale: 2
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "award"
    t.string   "hot"
    t.string   "news"
    t.text     "hot_text",        limit: 65535
    t.text     "news_text",       limit: 65535
    t.string   "catalog"
    t.string   "course_adoption"
    t.string   "highlight"
    t.string   "highlight_image"
    t.string   "award_year"
    t.string   "status"
    t.integer  "hotweight"
    t.integer  "newsweight"
    t.string   "sort_title"
    t.string   "award_year2"
    t.string   "award2"
    t.string   "award_year3"
    t.string   "award3"
    t.string   "award_year4"
    t.string   "award4"
    t.text     "author_prefix",   limit: 65535
    t.text     "author_first",    limit: 65535
    t.text     "author_last",     limit: 65535
    t.text     "author_suffix",   limit: 65535
    t.text     "author_byline",   limit: 65535
    t.text     "author_bios",     limit: 65535
    t.string   "pages_total"
    t.string   "trim"
    t.string   "illustrations"
    t.text     "author_id",       limit: 65535
  end

  create_table "conferences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "filename"
    t.string   "department"
    t.string   "format"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "department_contact"
    t.string   "contact_email"
  end

  create_table "entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "published"
    t.text     "description", limit: 65535
    t.text     "content",     limit: 65535
    t.string   "url"
    t.string   "author"
    t.integer  "feed_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "startdate"
    t.date     "enddate"
    t.text     "description", limit: 65535
    t.string   "where"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.time     "time"
    t.string   "timezone"
    t.time     "endtime"
    t.string   "image"
    t.string   "news"
    t.integer  "weight"
    t.string   "title"
  end

  create_table "faqs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "q"
    t.text     "a",          limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "feeds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "harvests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "updated_ids", limit: 65535
    t.text     "created_ids", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "error_ids",   limit: 65535
  end

  create_table "journals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "title"
    t.text     "description", limit: 65535
    t.string   "image"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "homepage"
  end

  create_table "oabooks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "description",              limit: 65535
    t.string   "isbn"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "content2",   limit: 65535
    t.string   "file"
  end

  create_table "people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "position"
    t.string   "department"
    t.string   "position_description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "document_contact"
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "region"
    t.string   "rights"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "review_harvests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "error_ids",   limit: 65535
    t.text     "deleted_ids", limit: 65535
    t.text     "created_ids", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "title_id"
    t.text     "author",     limit: 65535
    t.text     "review",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "weight"
    t.string   "review_id"
  end

  create_table "seasons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "code"
    t.string   "link"
    t.string   "image"
  end

  create_table "series", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "series_id"
    t.string   "series"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "editors"
    t.string   "founder"
    t.text     "description", limit: 65535
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "subject_id"
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
