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

ActiveRecord::Schema.define(version: 20170715215155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "first_name"
    t.string "gender"
    t.text "bio"
    t.string "identification_number"
    t.date "arrived_at_shelter"
    t.string "age"
    t.boolean "is_good_with_kids"
    t.boolean "is_good_with_dogs"
    t.boolean "is_good_with_cats"
    t.string "size"
    t.string "color"
    t.bigint "shelter_id"
    t.string "animal_type"
    t.string "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shelter_id"], name: "index_animals_on_shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "phone_number"
    t.string "email"
    t.string "zip_code"
    t.string "city"
    t.string "state"
    t.string "org_name"
    t.string "subdomain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "animals", "shelters"
end
