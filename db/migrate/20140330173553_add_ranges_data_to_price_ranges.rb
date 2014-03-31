class AddRangesDataToPriceRanges < ActiveRecord::Migration
  def change
  	 Hash[[[50,75],[75,100],[100,200],[200,500]]].each {|low,high|
    	PriceRange.create({low: low, high: high, range: "#{low} USD -#{high} USD"})
    }
  end
end
