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

ActiveRecord::Schema.define(version: 20170614191452) do

  create_table "alarms", force: :cascade do |t|
    t.integer  "department_id"
    t.date     "date"
    t.string   "location"
    t.datetime "received"
    t.datetime "ten_8"
    t.datetime "ten_2"
    t.datetime "ten_7"
    t.integer  "miles"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_alarms_on_department_id"
  end

  create_table "apparatus", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "code"
    t.string   "name"
    t.boolean  "current"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_apparatus_on_department_id"
  end

  create_table "blood_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_departments_on_state_id"
  end

  create_table "member_types", force: :cascade do |t|
    t.integer  "department_id"
    t.string   "type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_member_types_on_department_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer  "department_id"
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "dept_cell_phone"
    t.string   "social_security"
    t.string   "drivers_license"
    t.date     "birth_date"
    t.integer  "bloodtype_id"
    t.string   "email"
    t.boolean  "alarm_roster"
    t.boolean  "attendance_roster"
    t.boolean  "tax_credit"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["bloodtype_id"], name: "index_members_on_bloodtype_id"
    t.index ["department_id"], name: "index_members_on_department_id"
    t.index ["state_id"], name: "index_members_on_state_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
