class CreatePriceRanges < ActiveRecord::Migration
  def change
    # drop_table :price_ranges
    create_table :price_ranges do |t|
      t.integer :low
      t.integer :high
      t.string :range

      t.timestamps
    end

  end
end
