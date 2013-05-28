class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :ad
      t.references :user
      t.references :page
      t.integer :duration_in_seconds, :default => 0
      t.integer :event_type
      t.boolean :summarized,          :default => false
      t.string :target_url
      t.string :api_identifier

      t.timestamps
    end
    add_index :events, :ad_id
    add_index :events, :user_id
    add_index :events, :page_id
    add_index :events, :api_identifier
  end
end

