class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.string :url
      t.string :zip_code
      t.references :charity

      t.timestamps
    end
    add_index :news_items, :charity_id
  end
end
