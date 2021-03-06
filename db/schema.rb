# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_191_022_083_229) do
  create_table 'poker_votings', force: :cascade do |t|
    t.integer 'amount_of_votes'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'votes', force: :cascade do |t|
    t.integer 'value'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'poker_voting_id'
    t.string 'username'
    t.index ['poker_voting_id'], name: 'index_votes_on_poker_voting_id'
  end
end
