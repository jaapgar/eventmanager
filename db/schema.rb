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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130213044316) do

  create_table "contests", :force => true do |t|
    t.string   "prize"
    t.boolean  "present_to_win", :default => false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "sponsor_id"
    t.integer  "meeting_id"
  end

  create_table "exhibitior_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exhibitors", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sponsor_id"
    t.integer  "exhibitior_category_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "meetings", :force => true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "venue_id"
    t.integer  "sponsor_id"
  end

  create_table "meetings_sponsors", :id => false, :force => true do |t|
    t.integer "meeting_id"
    t.integer "sponsor_id"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "url"
    t.string   "logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
