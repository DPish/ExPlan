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

ActiveRecord::Schema.define(version: 20160724175848) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.integer  "explan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["explan_id"], name: "index_exercises_on_explan_id"
  end

  create_table "explans", force: :cascade do |t|
    t.string   "workout"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extasks", force: :cascade do |t|
    t.integer  "reps"
    t.integer  "pounds"
    t.integer  "sets"
    t.integer  "exercise_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exercise_id"], name: "index_extasks_on_exercise_id"
  end

end
