class History < ActiveRecord::Base
  attr_accessible :user_id, :video_id
  
  belongs_to :user
end
