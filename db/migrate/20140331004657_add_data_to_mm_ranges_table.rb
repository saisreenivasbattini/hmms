class AddDataToMmRangesTable < ActiveRecord::Migration
  def change

  	state = State.where({code: 'TN'}).first
  	region_middle = Region.where({state_id: state.id, name: 'Middle'}).first
  	region_eastern = Region.where({state_id: state.id, name: 'Eastern'}).first
  	region_western = Region.where({state_id: state.id, name: 'Western'}).first
  	practice = Practice.where({name: 'Chiropractic'}).first

  	MmRange.create({low: 101356, high: 118249, state_id: state.id, region_id: region_middle.id, practice_id: practice.id})
  	MmRange.create({low: 151346, high: 176519, state_id: state.id, region_id: region_middle.id,  practice_id: practice.id})
  	MmRange.create({low: 116794, high: 136260, state_id: state.id, region_id: region_middle.id,  practice_id: practice.id})


  	MmRange.create({low: 101356, high: 118249, state_id: state.id, region_id: region_eastern.id, practice_id: practice.id})
  	MmRange.create({low: 151346, high: 176519, state_id: state.id, region_id: region_eastern.id,  practice_id: practice.id})
  	MmRange.create({low: 116794, high: 136260, state_id: state.id, region_id: region_eastern.id,  practice_id: practice.id})


  	MmRange.create({low: 55320, high: 75970, state_id: state.id, region_id: region_western.id, practice_id: practice.id})
  	MmRange.create({low: 95000, high: 125000, state_id: state.id, region_id: region_western.id,  practice_id: practice.id})
  	MmRange.create({low: 235600, high: 426578, state_id: state.id, region_id: region_western.id,  practice_id: practice.id})

  end
end
