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

ActiveRecord::Schema.define(version: 20140106120525) do

  create_table "departments", force: true do |t|
    t.string   "name"
    t.string   "task"
    t.text     "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country_code"
    t.string   "state_code"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "post"
    t.integer  "salery"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  add_index "employees", ["department_id"], name: "index_employees_on_department_id"

  create_table "records", force: true do |t|
    t.string   "title"
    t.datetime "due_date"
    t.integer  "priority"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
