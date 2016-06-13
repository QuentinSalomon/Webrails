# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160610105027) do

  create_table "achat_essences", force: :cascade do |t|
    t.float    "km_traveled",     limit: 24
    t.float    "liters",          limit: 24
    t.float    "price_per_liter", limit: 24
    t.integer  "vehicul_id",      limit: 4
    t.integer  "gas_station_id",  limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "achat_essences", ["gas_station_id"], name: "fk_rails_73c7274bc8", using: :btree
  add_index "achat_essences", ["vehicul_id"], name: "fk_rails_d8bfb8da21", using: :btree

  create_table "gas_station_types", force: :cascade do |t|
    t.integer  "gas_station_id", limit: 4
    t.integer  "gas_type_id",    limit: 4
    t.float    "price",          limit: 24
    t.datetime "date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "gas_stations", force: :cascade do |t|
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.string   "name",       limit: 255
    t.string   "brand",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "gas_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id", limit: 4
    t.integer "user_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "nom",                    limit: 255
    t.string   "prenom",                 limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehiculs", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "brand",       limit: 255
    t.string   "category",    limit: 255
    t.float    "km",          limit: 24
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "gas_type_id", limit: 4
  end

  add_index "vehiculs", ["gas_type_id"], name: "index_vehiculs_on_gas_type_id", using: :btree

  add_foreign_key "achat_essences", "gas_stations"
  add_foreign_key "achat_essences", "vehiculs"
end
