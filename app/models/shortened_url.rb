class ShortenedUrl < ActiveRecord::Base
  
  validates :long_url, :submitter_id, :presence => true
  validates :short_url, :uniqueness => true, :presence => true
  
  belongs_to(
    :submitter,
    :class_name => "User",
    :foreign_key => :submitter_id,
    :primary_key => :id
  )
  
  has_many(
    :visits,
    :class_name => "Visit",
    :foreign_key => :shortened_url_id,
    :primary_key => :id
  )
  
  has_many(
    :visitors,
    Proc.new { distinct },
    :through => :visits,
    :source => :user
  )
  
  def self.random_code
    code = SecureRandom.urlsafe_base64(16)
    while ShortenedUrl.exists?(:short_url => code)
      code = SecureRandom.urlsafe_base64(16)
    end
    code
  end
  
  def self.create_for_user_and_long_url!(user, long_url)
    ShortenedUrl.create!(
      :long_url => long_url, 
      :short_url => random_code, 
      :submitter_id => user.id
    )
  end
  
  def num_clicks
    # self.visitors.distinct.count
    self.visits.count
  end
  
  def num_uniques
     self.visitors.count
     # self.visits.select(:user_id).distinct.count
  end
  
  def num_recent_uniques
    #self.visits.select(:user_id).where("created_at > ?", 10.minutes.ago).unique.count
    self.visitors.select(:user_id).
      where("visits.created_at > ?", 10.minutes.ago).count
  end

end