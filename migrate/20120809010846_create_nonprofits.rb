class CreateNonprofits < ActiveRecord::Migration
  def change
    create_table :nonprofits do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_number
      t.string :ein
      t.string :url
      t.references :user

      t.timestamps
    end
    add_index :nonprofits, :user_id
  end
end

