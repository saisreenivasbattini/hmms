class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :state
      t.string :region
      t.string :type_of_practice
      t.decimal :average_annual_collections
      t.integer :average_annual_visits
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.decimal :low
      t.decimal :high
      t.integer :user_id

      t.timestamps
    end
  end
end
