class Request < ActiveRecord::Base
  attr_accessible :description, :observation, :resume, :authority_id
  default_scope order("id DESC").includes(:comments)
  has_many :comments
  has_many :adopts

  belongs_to :authority

  validates :resume, presence: true
  validates :description, presence: true
end
