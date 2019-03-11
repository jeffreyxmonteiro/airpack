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

ActiveRecord::Schema.define(version: 2019_03_11_044536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_items", force: :cascade do |t|
    t.string "bookable_type"
    t.string "bookable_id"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_items_on_booking_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "fees"
    t.string "delivery_address"
    t.string "delivery_date"
    t.string "return_deadline"
    t.boolean "completed", default: false
    t.bigint "traveler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_days"
    t.bigint "packer_id"
    t.index ["packer_id"], name: "index_bookings_on_packer_id"
    t.index ["traveler_id"], name: "index_bookings_on_traveler_id"
  end

  create_table "cart_items", force: :cascade do |t|
    t.string "cartable_type"
    t.string "cartable_id"
    t.bigint "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "traveler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["traveler_id"], name: "index_carts_on_traveler_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.string "style"
    t.string "size"
    t.integer "price"
    t.string "photo_url"
    t.bigint "pack_id"
    t.bigint "packer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "booked", default: false
    t.index ["pack_id"], name: "index_items_on_pack_id"
    t.index ["packer_id"], name: "index_items_on_packer_id"
  end

  create_table "packers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "biography"
    t.string "location"
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_packers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_packers_on_reset_password_token", unique: true
  end

  create_table "packs", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.string "size"
    t.string "duration"
    t.integer "price"
    t.string "photo_url"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "packer_id"
    t.boolean "booked", default: false
    t.string "photo"
    t.index ["packer_id"], name: "index_packs_on_packer_id"
  end

  create_table "temp_closet_items", force: :cascade do |t|
    t.bigint "temp_closet_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_temp_closet_items_on_item_id"
    t.index ["temp_closet_id"], name: "index_temp_closet_items_on_temp_closet_id"
  end

  create_table "temp_closets", force: :cascade do |t|
    t.bigint "packer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["packer_id"], name: "index_temp_closets_on_packer_id"
  end

  create_table "travelers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "photo_url"
    t.string "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_travelers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_travelers_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "packers"
  add_foreign_key "bookings", "travelers"
  add_foreign_key "carts", "travelers"
  add_foreign_key "items", "packers"
  add_foreign_key "items", "packs"
  add_foreign_key "packs", "packers"
  add_foreign_key "temp_closet_items", "items"
  add_foreign_key "temp_closet_items", "temp_closets"
  add_foreign_key "temp_closets", "packers"
end
