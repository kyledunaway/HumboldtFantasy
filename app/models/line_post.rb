class LinePost < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  
end
