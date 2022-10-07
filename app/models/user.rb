class User < ApplicationRecord
  has_many :posts
  has_many :comments

  has_many :follows

  # Allows association to view list of users who follow a given user i.e. user.followers
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  # Allows association to view list of users who follow a given user i.e. user.following
  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followings, through: :following_relationships, source: :following

  validates :name,  presence: true, length: {maximum: 100}
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, length: {maximum: 200}, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  validates :age, presence: true
  validates :bio, presence: true, length: {maximum: 1000} 




end
