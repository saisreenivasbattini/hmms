class CreateMmRanges < ActiveRecord::Migration
  def change
    create_table :mm_ranges do |t|
      t.decimal :low
      t.decimal :high

      t.timestamps
    end
  end
end
