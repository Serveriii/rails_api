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

ActiveRecord::Schema[8.0].define(version: 2025_03_05_123915) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "jwt_denylists", force: :cascade do |t|
    t.string "jti"
    t.datetime "exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.boolean "project_done"
    t.float "work_amount"
    t.float "work_logged"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "work_type", default: "development"
    t.float "work_amount_development", default: 0.0
    t.float "work_amount_design", default: 0.0
    t.float "work_amount_research", default: 0.0
    t.float "work_amount_other", default: 0.0
    t.float "work_amount_total", default: 0.0
    t.index ["work_amount_design"], name: "index_projects_on_work_amount_design"
    t.index ["work_amount_development"], name: "index_projects_on_work_amount_development"
    t.index ["work_amount_other"], name: "index_projects_on_work_amount_other"
    t.index ["work_amount_research"], name: "index_projects_on_work_amount_research"
    t.index ["work_amount_total"], name: "index_projects_on_work_amount_total"
    t.index ["work_type"], name: "index_projects_on_work_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
