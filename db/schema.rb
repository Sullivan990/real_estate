
ActiveRecord::Schema.define(version: 20140406183840) do
  enable_extension "plpgsql"

  create_table "buildings", force: true do |t|
    t.string   "street_address", null: false
    t.string   "city",           null: false
    t.integer  "state_id",       null: false
    t.integer  "postal_code",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
