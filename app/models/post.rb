class Post < ActiveRecord::Base
  attr_accessible :text, :title
  validates :title, presence: true
  validates :text, presence: true

  belongs_to :user

  has_many :comments, dependent: :destroy

end
