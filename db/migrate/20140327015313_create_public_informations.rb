class CreatePublicInformations < ActiveRecord::Migration
  def change
    create_table :public_informations do |t|
      t.string :practice_name
      t.decimal :avg_annual_collection
      t.integer :avg_annual_visits
      t.integer :state_id
      t.integer :region_id

      t.timestamps
    end
  end
end
