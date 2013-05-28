class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :main_url
      t.string :api_identifier

      t.timestamps
    end
    add_index :sites, :api_identifier
  end
end

