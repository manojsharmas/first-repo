class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :state
      t.string :city
      t.string :street_address
      t.string :zip_code
      t.boolean :public
      t.float :lat
      t.float :lng
      t.references :charity
      t.references :locatable, :polymorphic => true
      t.timestamps
    end
  end
end
