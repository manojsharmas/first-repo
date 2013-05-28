class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :name
      t.integer :clicks
      t.references :user

      t.timestamps
    end
    add_index :bookmarks, :user_id
  end
end
