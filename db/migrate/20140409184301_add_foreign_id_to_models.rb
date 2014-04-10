class AddForeignIdToModels < ActiveRecord::Migration
  def change
    add_column :buildings, :owner_id, :integer
    add_column :owners, :building_id, :integer
  end
end
