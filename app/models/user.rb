class User < ApplicationRecord
  has_secure_password
  has_many :user_jokes
  validates :username, :password, :email, presence: true
  validates :username, :email, uniqueness: true
end
