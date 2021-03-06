class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :username, presence: true, uniqueness: true, length: { minimum: 2, maximum: 30 }
  validates :email, presence: true, uniqueness:
                  { case_sensitive: false }, format:
                  { with: VALID_EMAIL_REGEX }
  has_many :posts
  has_many :comments
end
