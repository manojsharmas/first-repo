class CreateCompGivEvPosts < ActiveRecord::Migration
  def change
    create_table :comp_giv_ev_posts do |t|
      t.text :content, null: false
      t.boolean :national, default:true
      t.string :type
      t.integer :state_id
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end

