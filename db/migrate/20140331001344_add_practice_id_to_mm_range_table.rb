class AddPracticeIdToMmRangeTable < ActiveRecord::Migration
  def change
  	add_column :mm_ranges, :practice_id, :integer
  end
end
