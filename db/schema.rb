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

ActiveRecord::Schema.define(version: 20171101043936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attributeproducts", force: :cascade do |t|
    t.text "range"
    t.bigint "product_id"
    t.bigint "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_attributeproducts_on_feature_id"
    t.index ["product_id"], name: "index_attributeproducts_on_product_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "typefeature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informationquotes", force: :cascade do |t|
    t.string "value"
    t.bigint "quote_id"
    t.bigint "attributeproduct_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attributeproduct_id"], name: "index_informationquotes_on_attributeproduct_id"
    t.index ["quote_id"], name: "index_informationquotes_on_quote_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.datetime "date"
    t.string "state"
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_quotes_on_product_id"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "typeproducts", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_typeproducts_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "firstname"
    t.string "lastname"
    t.string "document"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "enterprise"
    t.string "nit"
    t.string "role"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "attributeproducts", "features"
  add_foreign_key "attributeproducts", "products"
  add_foreign_key "informationquotes", "attributeproducts"
  add_foreign_key "informationquotes", "quotes"
  add_foreign_key "quotes", "products"
  add_foreign_key "quotes", "users"
  add_foreign_key "typeproducts", "products"
end
