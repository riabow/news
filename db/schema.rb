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

ActiveRecord::Schema.define(version: 20161019162101) do

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "manager"
    t.string   "staus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "caption",                               collation: "utf8_bin"
    t.date     "ndate"
    t.string   "tags",                                  collation: "utf8_bin"
    t.text     "body",       limit: 65535,              collation: "utf8_bin"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "prices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "tov_id"
    t.integer  "supl_id"
    t.float    "prc",        limit: 24
    t.datetime "d"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "simple_hashtag_hashtaggings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "hashtag_id"
    t.string  "hashtaggable_type"
    t.integer "hashtaggable_id"
    t.index ["hashtag_id"], name: "index_simple_hashtag_hashtaggings_on_hashtag_id", using: :btree
    t.index ["hashtaggable_id", "hashtaggable_type"], name: "index_hashtaggings_hashtaggable_id_hashtaggable_type", using: :btree
  end

  create_table "simple_hashtag_hashtags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name"], name: "index_simple_hashtag_hashtags_on_name", using: :btree
  end

  create_table "sp2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supls", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",                    collation: "utf8_bin"
    t.string   "city",                    collation: "utf8_bin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tovs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",                             collation: "utf8_bin"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name",                 collation: "utf8_bin"
    t.string   "avatar_content_type",              collation: "utf8_bin"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
