class AddAffliateIdToNonProfits < ActiveRecord::Migration
  def change
    change_table :nonprofits do |t|
      t.string :affiliate_id
    end
  end
end

