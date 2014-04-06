class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :street_address, null: false
      t.string :city, null: false
      t.integer :state_id, null: false
      t.integer :postal_code, null: false

      t.timestamps
    end
  end
end
