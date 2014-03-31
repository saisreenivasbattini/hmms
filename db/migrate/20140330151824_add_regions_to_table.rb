class AddRegionsToTable < ActiveRecord::Migration
  def change  	
  	if state = State.where({code: 'TN'}).first
  	  ['Middle','Eastern','Western'].each {|reg|
  		Region.create({name: reg, state_id: state.id})
       }		
  	end
  end
end
