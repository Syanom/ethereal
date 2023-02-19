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

ActiveRecord::Schema.define(version: 2023_02_19_184631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_images", force: :cascade do |t|
    t.string "image"
    t.bigint "adds_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adds_id"], name: "index_add_images_on_adds_id"
  end

  create_table "adds", force: :cascade do |t|
    t.boolean "flat"
    t.boolean "house"
    t.boolean "for_sale"
    t.boolean "for_rent"
    t.integer "square"
    t.integer "rooms"
    t.integer "living_rooms"
    t.integer "building_age"
    t.integer "number_of_floors"
    t.string "heating"
    t.integer "number_of_bathrooms"
    t.boolean "furnished"
    t.string "user_status"
    t.boolean "credit_available"
    t.boolean "video_call_available"
    t.boolean "active", default: true
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contact_mes", force: :cascade do |t|
    t.string "phone_number"
    t.string "email"
    t.boolean "contact_with_whatsapp", default: false
    t.boolean "contacted", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "slideshow_pictures", force: :cascade do |t|
    t.boolean "active"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "add_images", "adds", column: "adds_id"
end
