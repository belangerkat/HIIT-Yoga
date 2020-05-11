# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_15_183732) do

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flow_poses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "yoga_flow_id", null: false
    t.integer "pose_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pose_id"], name: "index_flow_poses_on_pose_id"
    t.index ["user_id"], name: "index_flow_poses_on_user_id"
    t.index ["yoga_flow_id"], name: "index_flow_poses_on_yoga_flow_id"
  end

  create_table "hiit_workouts", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_hiit_workouts_on_user_id"
  end

  create_table "poses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workout_exercises", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "hiit_workout_id", null: false
    t.integer "exercise_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exercise_id"], name: "index_workout_exercises_on_exercise_id"
    t.index ["hiit_workout_id"], name: "index_workout_exercises_on_hiit_workout_id"
    t.index ["user_id"], name: "index_workout_exercises_on_user_id"
  end

  create_table "yoga_flows", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_yoga_flows_on_user_id"
  end

  add_foreign_key "flow_poses", "poses"
  add_foreign_key "flow_poses", "users"
  add_foreign_key "flow_poses", "yoga_flows"
  add_foreign_key "hiit_workouts", "users"
  add_foreign_key "workout_exercises", "exercises"
  add_foreign_key "workout_exercises", "hiit_workouts"
  add_foreign_key "workout_exercises", "users"
  add_foreign_key "yoga_flows", "users"
end
