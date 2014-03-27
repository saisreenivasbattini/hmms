class CreatePublicInfos < ActiveRecord::Migration
  def change
    create_table :public_infos do |t|
      t.string :practice_name
      t.decimal :avg_annual_collection
      t.integer :avg_annual_visits

      t.timestamps
    end
  end
end
