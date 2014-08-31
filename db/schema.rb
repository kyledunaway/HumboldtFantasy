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

ActiveRecord::Schema.define(:version => 20130828004307) do

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

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
    t.integer  "player16"
    t.integer  "player17"
    t.integer  "player18"
    t.integer  "player19"
    t.integer  "player20"
    t.integer  "player21"
    t.integer  "player22"
    t.integer  "player23"
    t.integer  "player24"
    t.integer  "player25"
    t.integer  "player26"
    t.integer  "player27"
    t.integer  "player28"
    t.integer  "player29"
    t.integer  "player30"
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
