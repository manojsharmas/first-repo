class CreateCompGivEvLocations < ActiveRecord::Migration
  def change
    create_table :comp_giv_ev_locations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :district_fips
      t.string :district_name
      t.integer :user_id
      t.integer :state_id

      t.timestamps
    end
    add_index :comp_giv_ev_locations, :district_fips
  end
end

