class AddVideoUrlToMerchants < ActiveRecord::Migration
  def change
    change_table :merchants do |t|
      t.string :video_url
    end
  end
end
