class AddVideoUrlToUser < ActiveRecord::Migration
  def change
    change_table :charities do |t|
      t.string :video_url
    end
  end
end
