class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.string :region_state_id

      t.timestamps
    end
  end
end
