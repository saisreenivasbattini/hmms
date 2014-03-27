class AddNewFieldsToMmRange < ActiveRecord::Migration
  def change
    add_column :mm_ranges, :state_id, :integer
    add_column :mm_ranges, :region_id, :integer
  end
end
