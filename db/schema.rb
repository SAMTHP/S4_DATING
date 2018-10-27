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

ActiveRecord::Schema.define(version: 2018_10_27_174842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "celibs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "man_photos", force: :cascade do |t|
    t.string "url"
    t.text "description"
    t.bigint "man_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["man_user_id"], name: "index_man_photos_on_man_user_id"
  end

  create_table "man_users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "detail"
    t.string "pseudo"
    t.string "email"
    t.bigint "celib_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["celib_id"], name: "index_man_users_on_celib_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "subject"
    t.text "content"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
  end

  create_table "negative_acceptances", force: :cascade do |t|
    t.bigint "man_user_id"
    t.bigint "woman_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["man_user_id"], name: "index_negative_acceptances_on_man_user_id"
    t.index ["woman_user_id"], name: "index_negative_acceptances_on_woman_user_id"
  end

  create_table "participates", force: :cascade do |t|
    t.bigint "positive_acceptance_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_participates_on_conversation_id"
    t.index ["positive_acceptance_id"], name: "index_participates_on_positive_acceptance_id"
  end

  create_table "positive_acceptances", force: :cascade do |t|
    t.bigint "man_user_id"
    t.bigint "woman_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["man_user_id"], name: "index_positive_acceptances_on_man_user_id"
    t.index ["woman_user_id"], name: "index_positive_acceptances_on_woman_user_id"
  end

  create_table "woman_photos", force: :cascade do |t|
    t.string "url"
    t.text "description"
    t.bigint "woman_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["woman_user_id"], name: "index_woman_photos_on_woman_user_id"
  end

  create_table "woman_users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "detail"
    t.string "pseudo"
    t.string "email"
    t.bigint "celib_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["celib_id"], name: "index_woman_users_on_celib_id"
  end

  add_foreign_key "negative_acceptances", "man_users"
  add_foreign_key "negative_acceptances", "woman_users"
  add_foreign_key "participates", "conversations"
  add_foreign_key "participates", "positive_acceptances"
  add_foreign_key "positive_acceptances", "man_users"
  add_foreign_key "positive_acceptances", "woman_users"
end
