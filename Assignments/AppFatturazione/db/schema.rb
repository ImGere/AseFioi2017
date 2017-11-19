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

ActiveRecord::Schema.define(version: 20171117194146) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "codice_fiscale"
    t.string "email"
    t.integer "partita_iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "street_name"
    t.integer "street_number"
    t.integer "postal_code"
    t.string "city"
    t.string "state"
  end

  create_table "hours", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "client_id"
    t.boolean "is_fatturata", default: false
    t.integer "invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "total_amount", default: 0.0
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.float "tarif"
    t.string "street_name"
    t.integer "street_number"
    t.integer "postal_code"
    t.string "city"
    t.string "state"
  end

end
