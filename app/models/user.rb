class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name,  presence: true, length: {maximum: 100}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 200}, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  validates :age, presence: true
  validates :bio, presence: true, length: {maximum: 1000} 




end
