class AddCompanyNameToMerchants < ActiveRecord::Migration
  def change
    change_table :merchants do |t|
      t.string :company_name, null: false
    end
  end
end

