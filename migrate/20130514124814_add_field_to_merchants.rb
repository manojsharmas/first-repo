class AddFieldToMerchants < ActiveRecord::Migration
  def change
  	add_column :merchants, :phone, :string
  	 add_column :merchants, :contact_name, :string
  	 add_column :merchants, :federal_ein, :string
  	 add_column :merchants, :address_1, :string
  	 add_column :merchants, :address_2, :string
  	 add_column :merchants, :city, :string
  	 add_column :merchants, :state, :string
  	 add_column :merchants, :zip, :string
  	 add_column :merchants, :website_url, :string
  	 add_column :merchants, :facebok_url, :string
  end
end
