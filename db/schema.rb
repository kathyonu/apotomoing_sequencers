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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110629000007) do

  create_table "anagrams", :force => true do |t|
    t.string   "anagram_text"
    t.integer  "sequence_created_id"
    t.string   "description"
    t.string   "reference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", :force => true do |t|
    t.string   "text"
    t.integer  "sequence_created_id"
    t.string   "author"
    t.string   "lifedates"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sequence_createds", :force => true do |t|
    t.string   "sequence_text"
    t.string   "sequence_creation"
    t.string   "sequence_complete"
    t.string   "sequence_lexigram"
    t.string   "sequence_singular"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sequences", :force => true do |t|
    t.string   "sequence_text"
    t.string   "sequence_creation"
    t.string   "sequence_complete"
    t.string   "sequence_lexigram"
    t.string   "sequence_singular"
    t.string   "description"
    t.string   "reference"
    t.boolean  "anagram"
    t.boolean  "name"
    t.boolean  "phrase"
    t.boolean  "sexualities"
    t.boolean  "external"
    t.boolean  "internal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
