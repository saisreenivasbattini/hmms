class CreateQualifiedInfos < ActiveRecord::Migration
  def change
    create_table :qualified_infos do |t|
      t.decimal :asking_price
      t.decimal :physician_net_amount
      t.integer :public_information_id

      t.timestamps
    end
  end
end
