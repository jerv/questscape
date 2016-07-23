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

ActiveRecord::Schema.define(version: 20160723033859) do

  create_table "quests", force: :cascade do |t|
    t.string   "attack"
    t.string   "strength"
    t.string   "defence"
    t.string   "ranged"
    t.string   "prayer"
    t.string   "magic"
    t.string   "runecrafting"
    t.string   "construction"
    t.string   "hitpoints"
    t.string   "agility"
    t.string   "herblore"
    t.string   "thieving"
    t.string   "crafting"
    t.string   "fletching"
    t.string   "slayer"
    t.string   "hunter"
    t.string   "mining"
    t.string   "smithing"
    t.string   "fishing"
    t.string   "cooking"
    t.string   "firemaking"
    t.string   "woodcutting"
    t.string   "farming"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
