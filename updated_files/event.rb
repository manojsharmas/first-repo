class Event
  include MongoMapper::Document
  key :ad_id, Integer
  key :user_id, Integer
  key :page_id, ObjectId
  key :oldpage_id, Integer
  key :old_id, Integer
  key :duration_in_seconds, Integer
  key :event_type, Integer
  key :summarized, Boolean, :default => false
  key :target_url, String
  key :api_identifier, String
  key :credits, Integer
  key :date, Time
  timestamps!

  key :params, Hash
  
  belongs_to :page

  EVENT_TYPES = {
    :next_ad => 0, # TODO: Remove?
    :page_loaded => 1, :check_in => 2, :page_closed => 3,
    :login => 4, :logout => 5, :register => 6,
    :failed_login => 7, :failed_register => 8,
    :bookmark_click => 9, :bookmark_add => 10, # Bookmark events take target_url attribute
    :search => 11, :goto => 12, # Search/Goto events take target_url attribute
    :redeem => 13, :ad_page => 14, :daily => 15, :api_login => 16
  }
  before_save :calculate_duration
#  after_save :summarize!   # has to be after because depends on created_at being set
#  named_scope :unsummarized, :conditions => "summarized = 0"

  attr_accessible : id, :user_id, :duration_in_seconds, :event_type, :created_at
  
  def calculate_duration
    if event_type == Event::EVENT_TYPES[:check_in]
      # Each checkin represents 30 seconds of interaction time
      self.duration_in_seconds = 30
      if user
        user.credit_event(event_type)
        user.save(validate: false)  # bypass validations
      end
    end
  end

  # the below method is probably deprecated for some reason. 
  # I don't think there is a credits field in the new Mongo Event model. -Joseph
  def self.balance_users!
    User.find_each(:select => 'credits, id') do |user|
      date = Date.today.at_midnight
      event = Event.first_or_create(:event_type => Event::EVENT_TYPES[:daily], :user_id => user.id, :date => date)
      event.credits = user.credits
      event.save
    end
  end


  def user
    @user ||= begin
      return if self.user_id.nil?
      User.find(self.user_id)
      rescue
      nil
      end
  end

  # Skipping the summary for now. Can always regenerate if it seems we need it later.
  # In the future, we can pull this off to a rake task or delayed job, but let's get it working first
#  def summarize!
#    unless summarized
#      h = created_at.hour
#      d = created_at.day
#      m = created_at.month
#      y = created_at.year

#      hour_summary = Summary.find_or_create_by_user_id_and_page_id_and_period_type_and_h_and_d_and_m_and_y(user_id, page_id, Summary::PERIOD_TYPES[:hour], h, d, m, y)
#      hour_summary.update_attribute(:duration_in_seconds, hour_summary.duration_in_seconds + duration_in_seconds)
#      day_summary = Summary.find_or_create_by_user_id_and_page_id_and_period_type_and_d_and_m_and_y(user_id, page_id, Summary::PERIOD_TYPES[:day], d, m, y)
#      day_summary.update_attribute(:duration_in_seconds, day_summary.duration_in_seconds + duration_in_seconds)
#      month_summary = Summary.find_or_create_by_user_id_and_page_id_and_period_type_and_m_and_y(user_id, page_id, Summary::PERIOD_TYPES[:month], m, y)
#      month_summary.update_attribute(:duration_in_seconds, month_summary.duration_in_seconds + duration_in_seconds)
#      year_summary = Summary.find_or_create_by_user_id_and_page_id_and_period_type_and_y(user_id, page_id, Summary::PERIOD_TYPES[:year], y)
#      year_summary.update_attribute(:duration_in_seconds, year_summary.duration_in_seconds + duration_in_seconds)

#      self.summarized = true
#    end
#  end

end
Event.ensure_index :ad_id
Event.ensure_index :user_id
Event.ensure_index :page_id
Event.ensure_index :event_type
Event.ensure_index :api_identifier
Event.ensure_index :target_url


