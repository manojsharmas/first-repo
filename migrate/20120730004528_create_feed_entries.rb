class CreateFeedEntries < ActiveRecord::Migration
  def change
    create_table :feed_entries do |t|
      t.string :title
      t.text :summary
      t.string :url
      t.datetime :published_at
      t.string :guid
      t.references :user
      t.references :charity

      t.timestamps
    end
    add_index :feed_entries, :user_id
    add_index :feed_entries, :charity_id
  end
end
