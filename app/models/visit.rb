class Visit < ActiveRecord::Base
  belongs_to(
    :user,
    :class_name => "User",
    :foreign_key => :user_id,
    :primary_key => :id
  )
  
  belongs_to(
    :shortened_url,
    :class_name => "ShortenedUrl",
    :foreign_key => :shortened_url_id,
    :primary_key => :id
  )
  
  def self.record_visit!(user, shortened_url)
    Visit.create!(:user_id =>, :shortened_url_id =>)
  end
end