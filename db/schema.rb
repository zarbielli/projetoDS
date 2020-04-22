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

ActiveRecord::Schema.define(version: 20180613032750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "public_place"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.integer "number"
    t.string "additional_information"
    t.string "region"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "donates", force: :cascade do |t|
    t.string "status"
    t.integer "donator_id"
    t.integer "charity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.string "phone_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "description"
    t.date "validity"
    t.string "product_type"
    t.string "unit_measurement"
    t.string "amount"
    t.bigint "donate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donate_id"], name: "index_products_on_donate_id"
  end

  create_table "register_validates", force: :cascade do |t|
    t.boolean "status"
    t.boolean "account_disabled"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_register_validates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "cnpj"
    t.string "phone"
    t.string "name"
    t.string "password_digest"
    t.string "type"
    t.string "donations_made"
    t.string "donations_priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
