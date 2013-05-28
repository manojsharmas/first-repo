class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.references :ad
      t.references :user
      t.references :page
      t.integer :duration_in_seconds, :default => 0
      t.integer :period_type
      t.integer :h
      t.integer :d
      t.integer :m
      t.integer :y
      t.references :site

      t.timestamps
    end
    add_index :summaries, :ad_id
    add_index :summaries, :user_id
    add_index :summaries, :page_id
    add_index :summaries, :site_id
  end
end

