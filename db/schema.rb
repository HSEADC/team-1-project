# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_10_121723) do

  create_table "blocklists", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chatlists", force: :cascade do |t|
    t.boolean "quited"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "chats_id"
    t.index ["chats_id"], name: "index_chatlists_on_chats_id"
    t.index ["user_id"], name: "index_chatlists_on_user_id"
  end

  create_table "chats", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profiles_id"
    t.integer "users_id", null: false
    t.index ["profiles_id"], name: "index_favourites_on_profiles_id"
    t.index ["users_id"], name: "index_favourites_on_users_id"
  end

  create_table "message_statuses", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "message_id", null: false
    t.integer "user_id", null: false
    t.index ["message_id"], name: "index_message_statuses_on_message_id"
    t.index ["user_id"], name: "index_message_statuses_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "chat_id", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.boolean "visibility"
    t.string "photo"
    t.integer "age"
    t.string "gender"
    t.string "destination_city"
    t.integer "tidiness"
    t.integer "partyness"
    t.string "time_at_home"
    t.text "description"
    t.string "interests"
    t.string "work_field"
    t.boolean "queer_friendly"
    t.text "recycle"
    t.boolean "smoking"
    t.string "diet"
    t.integer "daily_regime"
    t.integer "communicativeness"
    t.string "instagram_link"
    t.string "vk_link"
    t.string "facebook_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_id"
    t.index ["profile_id"], name: "index_users_on_profile_id"
  end

  add_foreign_key "chatlists", "chats", column: "chats_id"
  add_foreign_key "chatlists", "users"
  add_foreign_key "favourites", "profiles", column: "profiles_id"
  add_foreign_key "favourites", "users", column: "users_id"
  add_foreign_key "message_statuses", "messages"
  add_foreign_key "message_statuses", "users"
  add_foreign_key "messages", "chats"
  add_foreign_key "messages", "users"
  add_foreign_key "users", "profiles"
end
