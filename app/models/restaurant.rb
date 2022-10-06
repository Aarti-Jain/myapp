class Restaurant < ApplicationRecord
  has_many :posts

  validates :id, presence: true, uniqueness: true
  validates :name, presence: true, length: {maximum: 100}
  validates :location, presence: true, length: {maximum: 100}
  validates :price_range, presence: true
end
