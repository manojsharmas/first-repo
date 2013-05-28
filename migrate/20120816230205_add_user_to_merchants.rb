class AddUserToMerchants < ActiveRecord::Migration
  def change
    change_table :merchants do |t|
      t.references :user, null: false
    end
  end
end

