class CreateTableMerchantsNearMe < ActiveRecord::Migration
  def up
  	create_table :merchants_near_mes do |t|

  	 t.string :company_name
  	 t.float :latitude 
  	 t.float :longitude
  	 t.integer :purchase_id

  	 t.timestamps
  	end
  end

  def down
  	#drop_table :merchants_near_mes
  end
end


