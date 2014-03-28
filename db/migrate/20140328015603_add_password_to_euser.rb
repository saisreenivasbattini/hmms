class AddPasswordToEuser < ActiveRecord::Migration
  def change
    add_column :eusers, :password, :string
  end
end
