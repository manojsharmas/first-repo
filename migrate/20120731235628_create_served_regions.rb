class CreateServedRegions < ActiveRecord::Migration
  def change
    create_table :served_regions do |t|
      t.references :country
      t.string :state
      t.string :city
      t.references :charity

      t.timestamps
    end
    add_index :served_regions, :country_id
    add_index :served_regions, :charity_id
  end
end

