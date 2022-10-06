class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :restaurant 


  validates :content, presence: true, length: {maximum: 10000}
  validates :user_id, presence: true
  validates :restaurant_id, presence: true 
  


end
