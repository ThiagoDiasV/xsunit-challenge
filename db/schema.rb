ActiveRecord::Schema.define(version: 2019_05_03_143953) do

  create_table "abducts", force: :cascade do |t|
    t.integer "abduct_score"
    t.integer "survivor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survivor_id"], name: "index_abducts_on_survivor_id"
  end

  create_table "survivors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.float "latitude"
    t.float "longitude"
    t.string "abducted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "abduct_score"
  end

end
