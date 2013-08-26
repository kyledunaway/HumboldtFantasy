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

ActiveRecord::Schema.define(:version => 20130826044002) do

  create_table "picks", :force => true do |t|
    t.text     "pick_content"
    t.string   "week_number"
    t.integer  "user_id"
    t.string   "username"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "user_id"
    t.string   "username"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "standings", :force => true do |t|
    t.integer  "player1"
    t.integer  "player2"
    t.integer  "player3"
    t.integer  "player4"
    t.integer  "player5"
    t.integer  "player6"
    t.integer  "player7"
    t.integer  "player8"
    t.integer  "player9"
    t.integer  "player10"
    t.integer  "player11"
    t.integer  "player12"
    t.integer  "player13"
    t.integer  "player14"
    t.integer  "player15"
    t.integer  "division1"
    t.integer  "division2"
    t.integer  "division3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
