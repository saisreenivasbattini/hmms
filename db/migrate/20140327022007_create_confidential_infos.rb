class CreateConfidentialInfos < ActiveRecord::Migration
  def change
    create_table :confidential_infos do |t|
      t.string :practice_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :phone
      t.string :email
      t.integer :qualified_info_id

      t.timestamps
    end
  end
end
