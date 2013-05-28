class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.string :email
      t.string :url
      t.datetime :established_at
      t.string :description_one
      t.string :description_two
      t.string :description_three
      t.string :logo_file_name
      t.string :logo_content_type
      t.integer :logo_file_size
      t.datetime :logo_updated_at
      t.integer :category_id
      t.integer :credits
      t.boolean :featured
      t.string :ein
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :organizational_name
      t.string :facebook_url
      t.string :twitter_url
      t.boolean :serve_worldwide
      t.references :user
      t.string :feed_url
      t.datetime :last_feed_update
      t.datetime :deleted_at
      t.string :affiliate_id
      t.boolean :imported_from_guidestar

      t.timestamps
    end
    add_index :charities, :user_id
  end
end
