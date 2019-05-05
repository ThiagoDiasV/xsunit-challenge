ActiveRecord::Schema.define(version: 2019_05_05_033001) do

  create_table "survivors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.float "latitude"
    t.float "longitude"
    t.string "abducted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "abduct_score", default: 0
    t.string "last_survivor_name_abduct_report", default: ""
  end

end
