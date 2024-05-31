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

ActiveRecord::Schema[7.0].define(version: 2022_11_26_172011) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cancellation_forms", force: :cascade do |t|
    t.string "reason_for_cancellation"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cancellation_forms_on_user_id"
  end

  create_table "complaint_forms", force: :cascade do |t|
    t.string "complaint_title"
    t.string "complaint_description"
    t.datetime "time_of_event", precision: nil
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_complaint_forms_on_user_id"
  end

  create_table "completed_websites", force: :cascade do |t|
    t.string "website_name"
    t.string "website_description"
    t.integer "completion_period"
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_completed_websites_on_admin_id"
  end

  create_table "confirmation_forms", force: :cascade do |t|
    t.string "project_assigned"
    t.string "website_assessment"
    t.string "overall_comment"
    t.datetime "deadline_possibility", precision: nil
    t.integer "price_offer"
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_confirmation_forms_on_admin_id"
  end

  create_table "review_forms", force: :cascade do |t|
    t.string "review_title"
    t.string "review"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_review_forms_on_user_id"
  end

  create_table "site_updates", force: :cascade do |t|
    t.string "update_title"
    t.string "update_description"
    t.datetime "update_schedule", precision: nil
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_site_updates_on_admin_id"
  end

  create_table "skill_lists", force: :cascade do |t|
    t.string "skill"
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_skill_lists_on_admin_id"
  end

  create_table "user_informations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "bio"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_informations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "website_requests", force: :cascade do |t|
    t.string "website_name"
    t.string "why_website"
    t.string "website_description"
    t.datetime "deadline"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_website_requests_on_user_id"
  end

  add_foreign_key "cancellation_forms", "users"
  add_foreign_key "complaint_forms", "users"
  add_foreign_key "completed_websites", "admins"
  add_foreign_key "confirmation_forms", "admins"
  add_foreign_key "review_forms", "users"
  add_foreign_key "site_updates", "admins"
  add_foreign_key "skill_lists", "admins"
  add_foreign_key "user_informations", "users"
  add_foreign_key "website_requests", "users"
end
