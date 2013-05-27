SharemeisterR326Dev::Application.routes.draw do

  match 'api/login' => 'api#login', :via => :get
  match 'api/register' => 'api#register', :via => :post
  match 'api/events' => 'api#events', :via => :get
  match 'api/donate/shares' => 'api#donate_shares', :via => :put
  match 'api/donate/history' => 'api#donation_history', :via => :get
  match 'api/profile/change_password' => 'api#change_password', :via => :put
  match 'api/profile/refill' => 'api#refill_shares_balance', :via => :get
  match 'api/profile/get' => 'api#profile_get', :via => :get
  match 'api/profile/put' => 'api#profile_put', :via => :put
  match 'api/merchants/nearme' => 'api#merchants_near_me', :via => :get
  match 'api/purchases' => 'api#purchases', :via => :get
  match 'api/event/list' => 'api#event_list', :via => :get

  # get "contacts/individual"
  match 'contacts/individual/:id' => 'contacts#individual'
  match 'contacts/non_profit/:id' => 'contacts#non_profit'
  match 'contacts/marchant/:id' => 'contacts#marchant'

  # get "contacts/non_profit"
  # 
  # get "contacts/marchant"

  get "teams/individual"

  get "teams/non_profit"

  get "teams/marchant"

  get "team/contact_us"

  get "team/individual"

  get "team/non_profit"

  get "team/marchant"

  get "privacy_policy/individual"

  get "privacy_policy/non_profit"

  get "privacy_policy/marchant"

  get "terms_of_services/individual"

  get "terms_of_services/non_profit"

  get "terms_of_services/marchant"

  get "marchant_user_signup_process/step_1"

  get "marchant_user_signup_process/step_2"

  get "marchant_user_signup_process/step_3"

  get "marchant_user_signup_process/step_4"
  get "marchant_user_signup_process/step_5"
  get "marchant_user_signup_process/step_6"

  get "non_profit_user_signup_process/step_1"

  get "non_profit_user_signup_process/step_2"

  get "non_profit_user_signup_process/step_3"

  get "non_profit_user_signup_process/step_4"
  
  get "non_profit_user_signup_process/step_5"

  get "simple_user_signup_process/step_1"

  get "simple_user_signup_process/step_2"

  get "simple_user_signup_process/step_3"

  get "simple_user_signup_process/step_4"

  get "newdesign/simple_user_index"

  get "newdesign/non_profit_user_index"

  get "newdesign/marchant_user_index"

  get "newdesign/simple_user_signup"

  get "newdesign/non_profit_user_signup"

  get "newdesign/marchant_user_signup"
  get "newdesign/comp_giv_ev"
  get "message/index"



  get "joust/index"



 



  # The priority is based upon order of creation:

  # first created -> highest priority.



  # Sample of regular route:

  #   match 'products/:id' => 'catalog#view'

  # Keep in mind you can assign values other than :controller and :action



  # Sample of named route:

  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase

  # This route can be invoked with purchase_url(:id => product.id)



  # Sample resource route (maps HTTP verbs to controller actions automatically):

  #   resources :products



  # Sample resource route with options:

  #   resources :products do

  #     member do

  #       get 'short'

  #       post 'toggle'

  #     end

  #

  #     collection do

  #       get 'sold'

  #     end

  #   end



  # Sample resource route with sub-resources:

  #   resources :products do

  #     resources :comments, :sales

  #     resource :seller

  #   end



  # Sample resource route with more complex sub-resources

  #   resources :products do

  #     resources :comments

  #     resources :sales do

  #       get 'recent', :on => :collection

  #     end

  #   end



  # Sample resource route within a namespace:

  namespace :admin do

  #     # Directs /admin/products/* to Admin::ProductsController

  #     # (app/controllers/admin/products_controller.rb)

    resources :summary

    resources :consumers

    resources :nonprofits

    resources :merchants

  end

  

  post "comp_giv_ev/comp_giv_ev/associate_team_with_user"

  post "comp_giv_ev/comp_giv_ev/donate_to_team"

  #post "comp_giv_ev/comp_giv_ev/set_team_changed"



  match "comp_giv_ev/home" => "comp_giv_ev/comp_giv_ev#home"

  match "comp_giv_ev/set_team_changed" => "comp_giv_ev/comp_giv_ev#set_team_changed"

  match "comp_giv_ev/show_team_change_warning" => "comp_giv_ev/comp_giv_ev#show_team_change_warning"

  match "comp_giv_ev/save_write_in_team" => "comp_giv_ev/comp_giv_ev#save_write_in_team"

  match "comp_giv_ev/set_informal_team_change" => "comp_giv_ev/comp_giv_ev#set_informal_team_change"

  match "comp_giv_ev/write_in_team" => "comp_giv_ev/comp_giv_ev#write_in_team"



  namespace :comp_giv_ev do

    resources :joust, :only => [:index, :create]

    resources :message, :only => [:index, :create]

    post "message/set_team"

    post "message/save_team"

    post "message/show_filtered_messages"

    post "joust/show_filtered_jousts"

    get  "joust/show_filtered_jousts"

    post "map/select_map"

    post "donations/get_shares"

    post "donations/donate_shares"

    post "donations/show_money_form"

    post "donations/donate_money"

    post "donations/show_modal"

  end



  # You can have the root of your site routed with "root"

  # just remember to delete public/index.html.

  # root :to => 'welcome#index'



  # See how all your routes lay out with "rake routes"



  # This is a legacy wild controller route that's not recommended for RESTful applications.

  # Note: This route will make all actions in every controller accessible via GET requests.

  # match ':controller(/:action(/:id))(.:format)'

  

  

  

  match "/individual" => "individual#index"

  namespace :individual do

    get 'events'

    get 'nonprofits'

    get 'toolbox'

    get 'earnings'

  end

  

  # match "/nonprofits" => "charities#index", :via => :get

  # match "/nonprofits/:id" => "charities#show", :via => :get

  # match "/nonprofits/new" => "charities#new", :via => :post

  

  match "/nonprofit" => "nonprofit#index"

  namespace :nonprofit do

    get 'events'

    get 'nonprofits'

    get 'news_feed'

    get 'earnings'

  end

  

  resources :merchants

  match "/merchant" => "merchant#index", :as => 'merchant_profile'

  namespace :merchant do

    get 'events'

    get 'nonprofits'

    get 'advertise'

    get 'balance'

  end

  

  

  match "/registration_redirect" => "pages#registration_redirect"

  match "/join-an-event" => "pages#join_an_event", :as => 'join_an_event'

  match "/pick-a-team" => "pages#pick_a_team", :as => 'pick_a_team'



  post "pages/save_a_team"





  # match "/get_started_path" => "pages#home", :as => :get_started

  

  

  

  

  

                #   # API routes

                # map.with_options :controller => "toolbar" do |m|

                #   {

                #     # These named route helpers match the action names

                #     # Add additional API methods here

                #     "check_in"       => "check_in",#temporarily discontinued (the flash still calls it though)

                #     "ad_page"        => "ad_page",

                #     "next_ad"        => "next_ad.:format",

                #     "page_loaded"    => "page_loaded",

                #     "page_closed"    => "page_closed",

                #     "add_bookmark"   => "add_bookmark",

                #     "click_bookmark" => "click_bookmark",

                #     "report_event"   => "report_event",

                #     "bust_bust"      => "bust_bust",

                #     # In order not to conflict with app authentication route helpers,

                #     # the following named route helpers will be api_login_path, etc

                #     # but the actions are named login, etc

                #     # and the API uri will be /api/login, etc

                #     "api_login"       => "login.:format",

                #     "api_logout"      => "logout.:format",

                #     "api_register"    => "register",

                #     "api_browser_redirect" => "browser_redirect",

                #     "api_ie_please_wait" => "ie_please_wait"

                #   }.each do |rails, api|

                #     m.send(rails, "api/#{api}", :action => rails.sub('api_', ''))

                #   end

                # end

  

  # http://stackoverflow.com/questions/3103765/routing-in-rails-3-map-with-options              

  # scope '/api' do

  #   match '/check_in' => "toolbar#check_in"

  #   match '/ad_page' => "toolbar#ad_page"

  #   match '/next_ad.:format' => "toolbar#next_ad"

  #   match '/page_loaded' => "toolbar#page_loaded"

  #   match '/page_closed' => "toolbar#page_closed"

  #   match '/add_bookmark' => "toolbar#add_bookmark"

  #   match '/click_bookmark' => "toolbar#click_bookmark"

  #   match '/report_event' => "toolbar#report_event"

  #   match '/bust_bust' => "toolbar#bust_bust"

  #   match '/login.:format' => "toolbar#login"

  #   match '/logout.:format' => "toolbar#logout"

  #   match '/register' => "toolbar#register"

  #   match '/browser_redirect' => "toolbar#browser_redirect"

  #   match '/ie_please_wait' => "toolbar#ie_please_wait"

  # end

  match 'api/check_in' => 'toolbar#check_in', :as => :check_in

  match 'api/ad_page' => 'toolbar#ad_page', :as => :ad_page

  match 'api/next_ad' => 'toolbar#next_ad', :as => :next_ad

  match 'api/page_loaded' => 'toolbar#page_loaded', :as => :page_loaded

  match 'api/page_closed' => 'toolbar#page_closed', :as => :page_closed

  match 'api/add_bookmark' => 'toolbar#add_bookmark', :as => :add_bookmark

  match 'api/click_bookmark' => 'toolbar#click_bookmark', :as => :click_bookmark

  match 'api/report_event' => 'toolbar#report_event', :as => :report_event

  match 'api/bust_bust' => 'toolbar#bust_bust', :as => :bust_bust

  match 'api/login' => 'toolbar#login', :as => :api_login

  match 'api/logout' => 'toolbar#logout', :as => :api_logout

  match 'api/register' => 'toolbar#register', :as => :api_register

  match 'api/browser_redirect' => 'toolbar#browser_redirect', :as => :api_browser_redirect

  match 'api/ie_please_wait' => 'toolbar#ie_please_wait', :as => :api_ie_please_wait

                

                # map.api_feed '/api/feed.rss', :controller => 'feeds', :action => 'api'

  match '/api/feed.rss' => 'feeds#api', :as => :api_feed

                # map.resources :categories

  resources :categories

                # map.resources :charities, :member => { :set_featured => :get, :follow => :get, :donations => :get, :edit_private => :get, :edit_public => :get, :edit_about => :get }, :collection => { :by_category => :get, :featured => :get } do |charities|

                #   charities.resources :news_items, :collection => { :list => :get }

                # end

  resources :charities, :path => "nonprofits" do

    collection do

      get :by_category

      get :featured

    end

    member do

      get :set_featured

      get :follow

      get :donations

      get :edit_private

      get :edit_public

      get :edit_about

    end

    resources :news_items do

      collection do

        get :list

      end

    end

  end

                # map.resources :credit_transactions #, :only => [:new, :create]

  resources :credit_transactions

                # map.resources :reports, :only => [], :collection => { :user_count => :get, :member_account_statement => :get }

  resources :reports, :only => [] do

    collection do

      get :user_count

      get :member_account_statement

    end

  end

                # map.resources :sites

  resources :sites

                # map.unfollow_charity '/charities/:id/followers/:follower_id', :controller => "charities", :action => "unfollow"

  match '/charities/:id/followers/:follower_id' => 'charities#unfollow', :as => :unfollow_charity

                # map.resources :password_resets, :only => [:new, :create, :edit, :update]

  resources :password_resets, :only => [:new, :create, :edit, :update]

                # map.resources :users, :collection => {:impersonate => :post}, :member => {:charity => :get, :autodonate => :put, :affiliate_link => :put }

  resources :users do

    collection do

      post :impersonate

    end

    member do

      get :charity

      put :autodonate

      put :affiliate_link

    end

  end

                # map.resource :user_session, :only => [:new, :create, :destroy]

  resource :user_session, :only => [:new, :create, :destroy]

                # map.login 'login', :controller => "user_sessions", :action => "new"

  match 'login' => 'user_sessions#new', :as => :login

                # map.logout 'logout', :controller => "user_sessions", :action => "destroy"

  match 'logout' => 'user_sessions#destroy', :as => :logout

                # map.logout_xml 'logout.xml', :controller => "user_sessions", :action => "logout"

  match 'logout.xml' => 'user_sessions#logout', :as => :logout_xml

                # map.activate '/activate/:activation_code', :controller => 'activations', :action => 'new'

  match '/activate/:activation_code' => 'activations#new', :as => :activate

                # map.finish_activate '/finish_activate/:id', :controller => 'activations', :action => 'create'

  match '/finish_activate/:id' => 'activations#create', :as => :finish_activate

                # map.register 'register', :controller => "users", :action => "new"

  match 'register' => 'users#new', :as => :register

                # map.tos 'terms_of_service', :controller => "pages", :action => "tos"

  match "/terms-of-service" => "pages#tos", :as => :tos

  

  match "/test-modal" => "pages#test_modal"

  match "/privacy-policy" => "pages#privacy_policy", :as => :privacy_policy

  

                # map.contactus 'contactus', :controller => "pages", :action => "contactus"

  match 'contactus' => 'pages#contactus', :as => :contactus

                # map.donations 'users/:id/donations', :controller => 'users', :action => 'donations'

  match 'users/:id/donations' => 'users#donations', :as => :donations

  match 'individual/donations' => 'users#donations'

                # map.following 'users/:id/following', :controller => 'users', :action => 'following'

  match 'users/:id/following' => 'users#following', :as => :following

  match 'individual/following' => 'users#following'

                # map.root :controller => "pages", :action => "home"

  #root :to => "pages#home"
   root :to =>"newdesign#simple_user_index" 
  #match '/' => 'pages#home'
    match '/' => "newdesign#simple_user_index"
                # map.add_widget 'add_widget', :controller => "pages", :action => "add_widget"

  match 'add_widget' => 'pages#add_widget', :as => :add_widget

                # map.download '/download', :controller => 'download', :action => 'download'

  match '/download' => 'download#download', :as => :download

                # map.update '/download/update', :controller => 'download', :action => 'update'

  match '/download/update' => 'download#update', :as => :update

                # map.update_description '/update/description/:platform', :controller => 'update', :action => 'description'

  match '/update/description/:platform' => 'update#description', :as => :update_description

                # map.update_available '/update/available/:platform.:format', :controller => 'update', :action => 'available'

  match '/update/available/:platform.:format' => 'update#available', :as => :update_available

                # map.movie "/movie", :controller => "pages", :action => "flash_movie"

  match '/movie' => 'pages#flash_movie', :as => :movie

                # map.pages 'pages/:action', :controller => "pages"

  match 'pages/:action' => 'pages#index', :as => :pages

                # map.feed '/feed.:format', :controller => 'feeds', :action => 'index'

  match '/feed.:format' => 'feeds#index', :as => :feed

                # map.namespace(:admin) do |admin|

                #   admin.resources :reports, :only => [:index], :collection => { :export_csv => :get }

                #   admin.resources :feeds

                # end

  namespace :admin do

    resources :reports, :only => [:index] do

      collection do

        get :export_csv

      end

    end

    resources :feeds

  end

end

