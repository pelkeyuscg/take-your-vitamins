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

ActiveRecord::Schema.define(version: 2023_03_03_211135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pill_takens", force: :cascade do |t|
    t.integer "pill_id"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pills", force: :cascade do |t|
    t.integer "vitamin_id"
    t.integer "owner_id"
    t.string "brand"
    t.string "description"
    t.string "ingredients"
    t.integer "quantity"
    t.integer "upc"
    t.string "order_more"
    t.integer "pill_takens_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "frequency"
    t.integer "pill_id"
    t.integer "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.string "schedule"
    t.integer "pills_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vitamins", force: :cascade do |t|
    t.integer "amount_per_serving"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
