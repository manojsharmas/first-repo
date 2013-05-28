class CreateGeolocations < ActiveRecord::Migration
  def change
    create_table :geolocations do |t|
      t.string :country
      t.string :city
      t.string :accent_city
      t.string :state
      t.decimal :latitude,    :precision => 11, :scale => 8
      t.decimal :longitude,    :precision => 11, :scale => 8

      t.timestamps
    end
    add_index :geolocations, :city
    add_index :geolocations, :country
    add_index :geolocations, :state
  end
end

