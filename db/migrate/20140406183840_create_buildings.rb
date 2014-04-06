class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :street_address
      t.string :city
      t.integer :state_id
      t.integer :postal_code

      t.timestamps
    end
  end
end
