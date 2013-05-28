class RemoveDateTimeForCountries < ActiveRecord::Migration
  def up
    remove_column :countries, :created_at
    remove_column :countries, :updated_at
  end

  def down
  end
end
