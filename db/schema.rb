# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_04_122046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "business_establishments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "cnpj"
    t.string "company_name"
    t.string "trade_name"
    t.string "phone"
    t.string "street"
    t.string "number"
    t.string "neighborhood"
    t.string "zip_code"
    t.string "city_ibge_code"
    t.string "city_name"
    t.string "latitude"
    t.string "longitude"
  end

  create_table "products", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "code"
    t.string "getin_code"
    t.string "cfop_code"
    t.string "ncm_code"
    t.string "anp_code"
    t.string "comercial_unit_code"
    t.string "description"
  end

  create_table "products_by_business_establishments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "getin_code"
    t.string "cnpj"
    t.decimal "unit_value_last_sale"
    t.decimal "value_last_sale"
    t.decimal "minimum_value_sold"
    t.decimal "maximum_value_sold"
    t.datetime "last_sale_issue_date"
    t.string "last_sale_issue_date_description"
  end

end
