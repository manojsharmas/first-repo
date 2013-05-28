class AddUserTypeToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :user_type
    end
    
    # info = {
    #   charity: 0,
    #   merchant: 0,
    #   user: 0
    # }
    # User.all.each do |u|
    #   if Charity.where("user_id = ?", u.id).first
    #     info[:charity] += 1
    #     u.user_type = 'charity'
    #     u.save
    #   elsif Merchant.where("user_id = ?", u.id).first
    #     info[:merchant] += 1
    #     u.user_type = 'merchant'
    #     u.save
    #   else
    #     info[:user] += 1
    #     u.user_type = 'user'
    #     u.save
    #   end
    # end
    # puts info.inspect
  end
end
