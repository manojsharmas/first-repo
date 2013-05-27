class ApiController < ApplicationController
  before_filter :authenticate, :except => [:events, :register, :event_list]

  def refill_shares_balance
    #todo: remove this method when apps testing finished
    response.headers['Content-Type'] = 'application/json'

    u = @user_session.user
    if u
      if u.credits
        u.credits += 100
      else
        u.credits = 100
      end
      u.save

      shares_data = {
          :shares => u.credits
      }
      render :json => shares_data, :status => 200
    else
      #forbidden
      render :nothing => true, :status => 403
    end
  end

  def login
    response.headers['Content-Type'] = 'application/json'
    render :nothing => true, :status => 200
  end

  def register
    response.headers['Content-Type'] = 'application/json'

    if params[:email] and params[:password]
      user = User.new({:email => params[:email], :password => params[:password], :terms_of_use => true})
      user.user_type = 'user'
      user.active = true
      user.deliver_welcome_email!
      UserSession.create @user
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  def profile_get
    response.headers['Content-Type'] = 'application/json'

    u = @user_session.user
    if u
      user_data = {
          :email => u.email,
          :birthdate => u.birthdate,
          :gender => u.gender,
          :first_name => u.first_name,
          :last_name => u.last_name,
          :zip_code => u.zip_code,
          :shares => u.credits
      }
      render :json => user_data
    else
      #forbidden
      render :nothing => true, :status => 403
    end
  end

  def change_password
    response.headers['Content-Type'] = 'application/json'

    u = @user_session.user
    u.password = params[:password]
    if u.changed?
      u.save
      @user_session.destroy
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 304
    end
  end

  def profile_put
    response.headers['Content-Type'] = 'application/json'

    u = @user_session.user
    if u
      changed = false
      if params[:email] and u.email != params[:email]
        u.email = params[:email]
        changed = true
      end
      if params[:birthdate] and u.birthdate != params[:birthdate]
        u.birthdate = params[:birthdate]
        changed = true
      end
      if params[:gender] and u.gender != params[:gender]
        u.gender = params[:gender]
        changed = true
      end
      if u.first_name != params[:first_name]
        u.first_name = params[:first_name]
        changed = true
      end
      if u.last_name != params[:last_name]
        u.last_name = params[:last_name]
        changed = true
      end
      if u.zip_code != params[:zip_code]
        u.zip_code = params[:zip_code]
        changed = true
      end

      if changed
        u.save
        render :nothing => true, :status => 204
      else
        render :nothing => true, :status => 304
      end
    else
      #forbidden
      render :nothing => true, :status => 403
    end
  end

  def events
    events = [
        {
            :key => 'r-vs-p1',
            :image => 'http://bitboxer.de/images/2012-10-03-ruby-vs-python/ruby-vs-python.png',
            :subject => 'Ruby vs Python',
            :nonprofit => 'WCG',
            :nonprofit_image => 'http://games-world.org.ua/wp-content/uploads/2012/08/WCG_logo_cr.jpg',
            :team1 => 'Ruby',
            :team1_image => 'http://shkola-linux.ru/images/stories/ruby.png',
            :team1_score => 850.00,
            :team2 => 'Python',
            :team2_image => 'http://www.online-utility.org/image/ImageCache?file=0/0a/Python.svg/800px-Python.svg',
            :team2_score => 750.00,
            :timestamp => 1368029331
        },
        {
            :key => 'r-vs-j1',
            :image => 'http://techtastico.com/files/2006/03/java_vs_rubyonrails.miniatura.jpg',
            :subject => 'Ruby vs Java',
            :nonprofit => 'JetBrains',
            :nonprofit_image => 'http://confluence.jetbrains.com/download/attachments/2/logo_jetbrains.gif?version=1&modificationDate=1255699747000',
            :team1 => 'Ruby',
            :team1_image => 'http://shkola-linux.ru/images/stories/ruby.png',
            :team1_score => 850.00,
            :team2 => 'Java',
            :team2_image => 'http://minecraft-mods.ru/uploads/posts/2012-08/1343847021_java.png',
            :team2_score => 335.00,
            :timestamp => 1368029331
        },
        {
            :key => 'h-vs-t1',
            :image => 'http://mymp4movie.files.wordpress.com/2012/10/hulk_vs_thor.jpg',
            :subject => 'Hulk vs Thor',
            :nonprofit => 'Marvell',
            :nonprofit_image => 'http://upload.wikimedia.org/wikipedia/en/4/41/Marvell_Technology_Group_logo.jpg',
            :team1 => 'Hulk',
            :team1_image => 'http://3.bp.blogspot.com/-MXhMQ6zKm1s/UCzf1roQOnI/AAAAAAAABIU/Yluf6N3m8cA/s1600/Jeremy-Love_Hulk_Concept_06.jpg',
            :team1_score => 520.00,
            :team2 => 'Thor',
            :team2_image => 'http://blogs.cio.com/sites/cio.com/files/u7727/thor2.jpg',
            :team2_score => 380.00,
            :timestamp => 1368029331
        },
        {
            :key => 'e-vs-n1',
            :image => 'http://s2.hubimg.com/u/1743533_f520.jpg',
            :subject => 'Einstein vs Newton',
            :nonprofit => 'American Red Cross',
            :nonprofit_image => 'http://www.socialfindlay.com/wp-content/uploads/2012/12/Am-Red-Cross-logo_0.png',
            :team1 => 'Einstein',
            :team1_image => 'http://www.teachthought.com/wp-content/uploads/2012/08/einstein.jpg',
            :team1_score => 720.00,
            :team2 => 'Newton',
            :team2_image => 'http://upload.wikimedia.org/wikipedia/commons/9/9f/Sir_Isaac_Newton_1702.jpg',
            :team2_score => 640.00,
            :timestamp => 1368029331
        }
    ]
    response.headers['Content-Type'] = 'application/json'
    render :json => events
  end
  
  def event_list
  response.headers['Content-Type'] = 'application/json'
   e = @event.all
   if e
        event_data = {
          :user_id => e.user_id,
          :duration_in_seconds => e.duration_in_seconds,
          :event_type => e.event_type,
          :created_at => e.created_at
      }
      render :json => event_data
    else
      #forbidden
      render :nothing => true, :status => 403
    end
  end

  def donate_shares
    response.headers['Content-Type'] = 'application/json'

    if params[:nonprofit_id] and params[:shares]
      u = @user_session.user

      begin
        donation = Integer(params[:shares])
      rescue
        render :nothing => true, :status => 400
      end

      if u and u.credits and donation <= u.credits
        u.credits -= donation
        #todo: actually move credits to nonprofit / team
        u.save

        shares_data = {
            :shares => u.credits
        }
        render :json => shares_data, :status => 200
      else
        #forbidden
        render :nothing => true, :status => 403
      end
    else
      render :nothing => true, :status => 400
    end
  end

  def donation_history
    response.headers['Content-Type'] = 'application/json'

    stubs = [
        {
            :key => '1',
            :nonprofit => 'American Red Cross',
            :shares => 100,
            :when => '2013-01-01 01:01:01'
        },
        {
            :key => '2',
            :nonprofit => 'American Red Cross',
            :shares => 100,
            :when => '2013-01-02 19:30:00'
        },
        {
            :key => '3',
            :team => 'Hulk',
            :event => 'Hulk vs Thor',
            :nonprofit => 'American Red Cross',
            :shares => 120,
            :when => '2013-04-09 17:35:50'
        },
        {
            :key => '4',
            :team => 'Hulk',
            :event => 'Hulk vs Thor',
            :nonprofit => 'American Red Cross',
            :shares => 25,
            :when => '2013-04-10 10:35:00'
        },
        {
            :key => '5',
            :team => 'Hulk',
            :event => 'Hulk vs Thor',
            :nonprofit => 'American Red Cross',
            :shares => 13,
            :when => '2013-04-11 22:22:22'
        },
        {
            :key => '6',
            :team => 'Hulk',
            :event => 'Hulk vs Thor',
            :nonprofit => 'American Red Cross',
            :shares => 340,
            :when => '2013-04-29 11:31:01'
        },
        {
            :key => '7',
            :team => 'Hulk',
            :event => 'Hulk vs Thor',
            :nonprofit => 'American Red Cross',
            :shares => 103,
            :when => '2013-05-13 13:49:51'
        }
    ]

    render :json => stubs, :status => 200
  end

  def purchases
    response.headers['Content-Type'] = 'application/json'

    stubs = [
        {
            :key => '1',
            :venue => 'Plarium Mobile Pub',
            :spent => 535,
            :when => '2013-01-01 01:01:01',
            :roc_percent => 10
        },
        {
            :key => '2',
            :venue => 'Patrick Irish Pub',
            :spent => 55,
            :when => '2013-01-02 19:30:00',
            :roc_percent => 10
        },
        {
            :key => '3',
            :venue => 'History Museum',
            :spent => 22,
            :when => '2013-04-09 17:35:50',
            :roc_percent => 1
        },
        {
            :key => '4',
            :venue => 'History Museum',
            :spent => 25,
            :when => '2013-04-10 10:35:00',
            :roc_percent => 1
        },
        {
            :key => '5',
            :venue => 'Puzata Hata',
            :spent => 245,
            :when => '2013-04-11 22:22:22',
            :roc_percent => 13
        },
        {
            :key => '6',
            :venue => 'Cristall',
            :spent => 3245,
            :when => '2013-04-29 11:31:01',
            :roc_percent => 4
        },
        {
            :key => '7',
            :venue => 'Arriba!',
            :spent => 304,
            :when => '2013-05-13 13:49:51',
            :roc_percent => 2
        }
    ]

    render :json => stubs, :status => 200
  end

  def merchants_near_me
    response.headers['Content-Type'] = 'application/json'

    if params[:lat] and params[:lon]
      begin
        lat = Float(params[:lat])
        lon = Float(params[:lon])
      rescue
        render :nothing => true, :status => 400
      end

      merchants = [
        {
          :name => 'Plarium Mobile Pub',
          :lat => 49.993738,
          :lon => 36.230764,
          :roc_percent => 10
        },
        {
          :name => 'Patrick Irish Pub',
          :lat => 49.9927572905096,
          :lon => 36.23031566522217,
          :roc_percent => 15
        },
        {
          :name => 'History Museum',
          :lat => 49.992751300802816,
          :lon => 36.230641239977544,
          :roc_percent => 1
        },
        {
          :name => 'Puzata Hata',
          :lat => 49.99344303026524,
          :lon => 36.232566833496094,
          :roc_percent => 13
        },
        {
          :name => 'People',
          :lat => 49.99403926141822,
          :lon => 36.23270042436687,
          :roc_percent => 7
        },
        {
          :name => 'Cristall',
          :lat => 49.99342006485425,
          :lon => 36.23020581538012,
          :roc_percent => 4
        },
        {
          :name => 'Infoport',
          :lat => 49.992808237802976,
          :lon => 36.23013222393744,
          :roc_percent => 6
        },
        {
          :name => 'Netcraft',
          :lat => 49.99414073547588,
          :lon => 36.23039208252151,
          :roc_percent => 1
        },
        {
          :name => 'Petri Pizza',
          :lat => 49.99448474314899,
          :lon => 36.230945309933,
          :roc_percent => 4
        },
        {
          :name => 'Arriba!',
          :lat => 49.99471901446542,
          :lon => 36.22939109802246,
          :roc_percent => 2
        }
      ]

      #todo: replace stubs with real APIs
      #merchants = Merchant.where(:public_location =>[lat, lon], :within=>10)
      render :json => merchants, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  private
  def authenticate
    authenticate_or_request_with_http_basic('Sharemeister API') do |username, password|
      @user_session = UserSession.new(:email => username, :password => password)
      result = @user_session.save
      if result
        Rails.logger.info "Successfully authenticated #{username}"
        true
      else
        Rails.logger.info "unable to authenticate #{username} with #{password}"
        @user_session.errors.each do |err|
          Rails.logger.info err
        end
        false
      end
    end
  end
end
