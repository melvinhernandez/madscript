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

ActiveRecord::Schema.define(version: 20141121013552) do

  create_table "authors", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fave_genre"
    t.integer  "too_mad"
    t.integer  "twinkle"
  end

  add_index "authors", ["email"], name: "index_authors_on_email", unique: true
  add_index "authors", ["reset_password_token"], name: "index_authors_on_reset_password_token", unique: true

  create_table "cycdrafts", force: true do |t|
    t.string   "draft_name"
    t.integer  "draft_number"
    t.string   "draft_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cycwrites", force: true do |t|
    t.integer  "current_state"
    t.integer  "new_state"
    t.integer  "likes_for_current_draft"
    t.integer  "draft_state_number"
    t.integer  "number_of_editors"
    t.integer  "curr_editor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scripts", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "genre"
    t.integer  "number_of_stanzas"
  end

  create_table "stanzas", force: true do |t|
    t.integer  "stanza_number"
    t.string   "authored_by"
    t.integer  "number_of_lines"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "whispers", force: true do |t|
    t.string   "commented_by"
    t.integer  "reference_line_start"
    t.integer  "reference_line_end"
    t.string   "analysis_and_feedback"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
