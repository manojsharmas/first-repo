
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = User.new(
  :email => "admin@example.com",
  :password => "pleaseplease",
  :password_confirmation => "pleaseplease",
  :birthdate=>DateTime.now() - 15.years ,
  :zip_code => "390006",
  :active => true,
  :first_name => "fName",
  :last_name => "lName"
)
admin_user.roles << "admin"
admin_user.save

user = User.create(
  :email => "user1@example.com",
  :password => "pleaseplease",
  :password_confirmation => "pleaseplease",
  :birthdate=>DateTime.now() - 15.years ,
  :zip_code => "390006",
  :first_name => "User",
  :last_name => "1"  
)

Merchant.create(
[{
  :company_name => "company1", 
  :email=> "m1@gmail.com", 
  :password=> "pleaseplease", 
  :password_confirmation =>  "pleaseplease", 
  :video_url=>"abc.com",
  :user_id=>1,
  :contact_name=> "Merchant1",
  :federal_ein=>1,
  :phone=>98289843,
  :address_1=>"Vijaynagar,Gujarat",
  :city=>"New Yourk",
  :address_2=>"Address2",
  :zip=>"390005",
  :website_url=>"web.com",
  :facebok_url=>"facebook.com",
  :logo=> File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :cover=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :state=>"Gujarat"
},
{
  :company_name => "company1", 
  :email=> "m1@gmail.com", 
  :password=> "pleaseplease", 
  :password_confirmation =>  "pleaseplease", 
  :video_url=>"abc.com",
  :user_id=>1,
  :contact_name=> "Merchant2",
  :federal_ein=>1,
  :phone=>98289843,
  :address_1=>"Vijaynagar,Gujarat",
  :city=>"New Yourk",
  :address_2=>"Address2",
  :zip=>"390005",
  :website_url=>"web.com",
  :facebok_url=>"facebook.com",
  :logo=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :cover=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :state=>"Gujarat"
},
{
  :company_name => "company1", 
  :email=> "m1@gmail.com", 
  :password=> "pleaseplease", 
  :password_confirmation =>  "pleaseplease", 
  :video_url=>"abc.com",
  :user_id=>1,
  :contact_name=> "Merchant3",
  :federal_ein=>1,
  :phone=>98289843,
  :address_1=>"Vijaynagar,Gujarat",
  :city=>"New Yourk",
  :address_2=>"Address2",
  :zip=>"390005",
  :website_url=>"web.com",
  :facebok_url=>"facebook.com",
  :logo=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :cover=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :state=>"Gujarat"
},
{
  :company_name => "company1", 
  :email=> "m1@gmail.com", 
  :password=> "pleaseplease", 
  :password_confirmation =>  "pleaseplease", 
  :video_url=>"abc.com",
  :user_id=>1,
  :contact_name=> "Merchant4",
  :federal_ein=>1,
  :phone=>98289843,
  :address_1=>"Vijaynagar,Gujarat",
  :city=>"New Yourk",
  :address_2=>"Address2",
  :zip=>"390005",
  :website_url=>"web.com",
  :facebok_url=>"facebook.com",
  :logo=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :cover=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :state=>"Gujarat"
},
{
  :company_name => "company1", 
  :email=> "m1@gmail.com", 
  :password=> "pleaseplease", 
  :password_confirmation =>  "pleaseplease", 
  :video_url=>"abc.com",
  :user_id=>1,
  :contact_name=> "Merchant5",
  :federal_ein=>1,
  :phone=>98289843,
  :address_1=>"Vijaynagar,Gujarat",
  :city=>"New Yourk",
  :address_2=>"Address2",
  :zip=>"390005",
  :website_url=>"web.com",
  :facebok_url=>"facebook.com",
  :logo=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :cover=>File.open(File.join(Rails.root, 'public', 'fancybox_sprite.png')),
  :state=>"Gujarat"
}]
)


Admin::Merchant.create(
[{
  :merchant_name=>"Merchant1", 
  :d_balance=>20, 
  :d_deposits=>30, 
  :d_withdrawals=>10, 
  :date=>DateTime.now,
  :email=>"merchant1@gmail.com", 
  :federal_ein=>12, 
  :paid_pending=>10, 
  :rank=>1, 
  :s_balance=>30, 
  :s_d_ratio=>2, 
  :s_deposits=>30, 
  :s_withdrawals=>10, 
  :zip_code=>"123",
  :merchant_id => 1
},
{
  :merchant_name=>"Merchant2", 
  :d_balance=>20, 
  :d_deposits=>30, 
  :d_withdrawals=>10, 
  :date=>DateTime.now,
  :email=>"merchant2@gmail.com", 
  :federal_ein=>12, 
  :paid_pending=>10, 
  :rank=>1, 
  :s_balance=>30, 
  :s_d_ratio=>2, 
  :s_deposits=>30, 
  :s_withdrawals=>10, 
  :zip_code=>"123",
  :merchant_id => 2
},
{
  :merchant_name=>"Merchant3", 
  :d_balance=>20, 
  :d_deposits=>30, 
  :d_withdrawals=>10, 
  :date=>DateTime.now,
  :email=>"merchant3@gmail.com", 
  :federal_ein=>12, 
  :paid_pending=>10, 
  :rank=>1, 
  :s_balance=>30, 
  :s_d_ratio=>2, 
  :s_deposits=>30, 
  :s_withdrawals=>10, 
  :zip_code=>"123",
  :merchant_id => 3
},
{
  :merchant_name=>"Merchant4", 
  :d_balance=>20, 
  :d_deposits=>30, 
  :d_withdrawals=>10, 
  :date=>DateTime.now,
  :email=>"merchant4@gmail.com", 
  :federal_ein=>12, 
  :paid_pending=>10, 
  :rank=>1, 
  :s_balance=>30, 
  :s_d_ratio=>2, 
  :s_deposits=>30, 
  :s_withdrawals=>10, 
  :zip_code=>"123",
  :merchant_id => 4
}]
)

ch = Charity.create(
{
:email => "ch1@m.com", 
:password=>"pleaseplease", 
:password_confirmation=>"pleaseplease", 
:name => "charity1", 
:ein => 1, 
:zip_code => 2344, 
:terms_of_service =>"1", 
:video_url=> "vido.com",
:url => "abc.com"
}
)


me =  Admin::Nonprofit.create(
[{
  :charity_id => 1,
  :d_balance =>10, 
  :d_deposits=>30, 
  :d_withdrawal=>20, 
  :date=>DateTime.now, 
  :s_balance=>10, 
  :s_d_ratio=>2, 
  :s_deposits=>30, 
  :s_withdrawal=>20,
  :paid_pending => 10

},
{
  :charity_id => 1,
  :d_balance => 10, 
  :d_deposits=>30, 
  :d_withdrawal=>20, 
  :date=>DateTime.now, 
  :s_balance=>10, 
  :s_d_ratio=>2, 
  :s_deposits=>30, 
  :s_withdrawal=>20,
  :paid_pending => 10
},
{
  :charity_id => 1,
  :d_balance => 10, 
  :d_deposits=>30, 
  :d_withdrawal=>20, 
  :date=>DateTime.now, 
  :s_balance=>10, 
  :s_d_ratio=>2, 
  :s_deposits=>30, 
  :s_withdrawal=>20,
  :paid_pending => 10
},
{
  :charity_id => 2,
  :d_balance => 10, 
  :d_deposits=>30, 
  :d_withdrawal=>20, 
  :date=>DateTime.now, 
  :s_balance=>10, 
  :s_d_ratio=>2, 
  :s_deposits=>30, 
  :s_withdrawal=>20,
  :paid_pending => 10
}]
)

adm = Admin::Consumer.create(
[{
  :user_id => 2,
  :d_balance=> 12, 
  :d_deposits => 30, 
  :d_withdrawal => 20, 
  :date => DateTime.now, 
  :s_balance => 10, 
  :s_d_ratio => 2, 
  :s_deposits=> 30,
  :s_withdrawal => 20, 
  :transaction_type=> "share"
},
{
  :user_id => 2,
  :d_balance=> 12, 
  :d_deposits => 30, 
  :d_withdrawal => 20, 
  :date => DateTime.now, 
  :s_balance => 10, 
  :s_d_ratio => 2, 
  :s_deposits=> 30,
  :s_withdrawal => 20, 
  :transaction_type=> "share"
},
{
  :user_id => 2,
  :d_balance=> 12, 
  :d_deposits => 30, 
  :d_withdrawal => 20, 
  :date => DateTime.now, 
  :s_balance => 10, 
  :s_d_ratio => 2, 
  :s_deposits=> 30,
  :s_withdrawal => 20, 
  :transaction_type=> "share"
},
{
  :user_id => 1,
  :d_balance=> 12, 
  :d_deposits => 30, 
  :d_withdrawal => 20, 
  :date => DateTime.now, 
  :s_balance => 10, 
  :s_d_ratio => 2, 
  :s_deposits=> 30,
  :s_withdrawal => 20, 
  :transaction_type=> "share"
},
{
  :user_id => 1,
  :d_balance=> 12, 
  :d_deposits => 30, 
  :d_withdrawal => 20, 
  :date => DateTime.now, 
  :s_balance => 10, 
  :s_d_ratio => 2, 
  :s_deposits=> 30,
  :s_withdrawal => 20, 
  :transaction_type=> "share"
}]
)




adm = Admin::Economics.new(
  :DV=>1, 
  :RV=>2, 
  :SV=>3, 
  :d_balance=>30, 
  :d_deposits=>30, 
  :d_withdraws=>0, 
  :discount_adv=>12, 
  :end_d_balance=>12, 
  :end_s_balance=>34, 
  :prev_d_balance=>23, 
  :prev_s_balance=>34, 
  :revenue=>12, 
  :s_balance=>23, 
  :s_deposits=>23, 
  :s_withdraws=>34)
adm.save

