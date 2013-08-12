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

ActiveRecord::Schema.define(version: 20130811234030) do

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address_ship"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.date     "birthday"
    t.string   "username_skype"
    t.integer  "stylist_id"
    t.string   "pinterest_board"
    t.integer  "budget"
    t.integer  "spend_tops"
    t.integer  "spend_pants"
    t.string   "height"
    t.decimal  "bust"
    t.decimal  "waist_natural"
    t.decimal  "hips"
    t.string   "size_top"
    t.string   "size_pant"
    t.string   "size_shoe"
    t.integer  "style_icon_id"
    t.string   "style_icon_other"
    t.text     "other_info"
    t.string   "referral_source"
    t.text     "avoid"
    t.string   "shape"
    t.string   "referred_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "client_id"
    t.date     "order_date"
    t.boolean  "autoship"
    t.boolean  "send_styleguide"
    t.string   "shipping_type"
    t.text     "special_instructions"
    t.integer  "stylist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
