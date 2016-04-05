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

ActiveRecord::Schema.define(version: 20160405124408) do

  create_table "etudiants", force: :cascade do |t|
    t.string   "prenom",     limit: 255
    t.string   "nom",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "portables", force: :cascade do |t|
    t.string   "no_serie",    limit: 255
    t.string   "marque",      limit: 255
    t.integer  "etudiant_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "portables", ["etudiant_id"], name: "fk_portables_etudiants", using: :btree

  add_foreign_key "portables", "etudiants", name: "fk_portables_etudiants"
end
