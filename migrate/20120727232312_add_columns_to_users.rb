class AddColumnsToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :login
    add_column :users, :roles, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :active, :boolean
    add_column :users, :zip_code, :string
    add_column :users, :gender, :string
    add_column :users, :birthdate, :date
    add_column :users, :credits, :integer
    add_column :users, :photo_file_name, :string
    add_column :users, :photo_content_type, :string
    add_column :users, :photo_file_size, :integer
    add_column :users, :photo_updated_at, :datetime
    add_column :users, :cycle_start, :datetime
    add_column :users, :activity, :integer
    add_column :users, :charity_id, :integer
    add_column :users, :autodonate_charity_percentage, :integer
    
    add_index :users, :email, :name => "index_users_on_email"
    add_index :users, :last_request_at, :name => "index_users_on_last_request_at"
    add_index :users, :perishable_token, :name => "index_users_on_perishable_token"
    add_index :users, :persistence_token, :name => "index_users_on_persistence_token"
  end
end

