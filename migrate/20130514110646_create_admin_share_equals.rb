class CreateAdminShareEquals < ActiveRecord::Migration
  def change
    create_table :admin_share_equals do |t|
      t.float :impression_value
      t.float :donation_value
      t.float :point_value
      t.float :dollar_value

      t.timestamps
    end
  end
end
