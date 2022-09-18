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

ActiveRecord::Schema[7.0].define(version: 2022_09_18_091140) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "sentences", force: :cascade do |t|
    t.text "english"
    t.text "spanish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "story_id", null: false
    t.index ["story_id"], name: "index_sentences_on_story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "name"
    t.boolean "published"
    t.hstore "spanish"
    t.hstore "french"
    t.string "difficulty"
    t.string "language"
    t.string "english", array: true
    t.string "photo"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sentences", "stories"
end
