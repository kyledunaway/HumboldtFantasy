class Pick < ActiveRecord::Base
  attr_accessible :pick_content, :week_number, :user_id, :username


  belongs_to :user

  validates_presence_of :week_number
  validates_presence_of :pick_content
end
