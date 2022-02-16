class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }


  # When a restaurant is destroyed, all of its reviews must be destroyed as well.


  # A review must belong to a restaurant.
  # A review must have content and a rating.
  # A review’s rating must be a number between 0 and 5.
end
