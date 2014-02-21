class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :name, :last_name, :email, :phone

#   ADD VALIDATES BEFORE PRODACTION
#
  validates :name,      presence: true, length: { maximum: 35 }
  validates :last_name, presence: true, length: { maximum: 35 }
  validates :phone,     presence: true, length: { maximum: 30 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates_uniqueness_of :email
end
