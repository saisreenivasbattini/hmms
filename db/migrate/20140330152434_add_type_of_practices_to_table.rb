class AddTypeOfPracticesToTable < ActiveRecord::Migration
  def change
  	Practice.create({name: 'Chiropractic', code: 'CHIRO'})
  end
end
