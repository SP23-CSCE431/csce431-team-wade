# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_230_220_184_715) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'appcats', force: :cascade do |t|
    t.integer 'appcatID'
    t.integer 'categoryID'
    t.integer 'applicationID'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'applications', force: :cascade do |t|
    t.integer 'applicationID'
    t.integer 'orgID'
    t.string 'name'
    t.date 'datebuilt'
    t.string 'githublink'
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'categories', force: :cascade do |t|
    t.integer 'categoryID'
    t.string 'name'
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'contacts', force: :cascade do |t|
    t.integer 'personID'
    t.integer 'orgID'
    t.date 'year'
    t.string 'name'
    t.string 'email'
    t.string 'officerposition'
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'organizations', force: :cascade do |t|
    t.integer 'orgID'
    t.string 'name'
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.integer 'userID'
    t.string 'name'
    t.string 'username'
    t.string 'password'
    t.boolean 'isadmin'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
