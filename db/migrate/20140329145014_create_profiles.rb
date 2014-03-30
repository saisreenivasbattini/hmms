class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :type_of_doctor
      t.string :licence_no
      t.string :password

      t.timestamps
    end
  end
end
