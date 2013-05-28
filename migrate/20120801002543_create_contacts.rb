class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :business_phone
      t.string :email
      t.boolean :public
      t.string :contact_name
      t.references :charity

      t.timestamps
    end
    add_index :contacts, :charity_id
  end
end
