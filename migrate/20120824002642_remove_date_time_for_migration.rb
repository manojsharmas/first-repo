class RemoveDateTimeForMigration < ActiveRecord::Migration
  def up
    remove_column :feed_entries, :created_at
    remove_column :feed_entries, :updated_at
    remove_column :served_regions, :created_at
    remove_column :served_regions, :updated_at
    remove_column :states, :created_at
    remove_column :states, :updated_at
  end

  def down
  end
end

