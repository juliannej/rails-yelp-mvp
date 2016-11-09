class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, :presence => {:if => proc{|o| o.restaurant_id.blank? }}
  validates :restaurant_id, :presence => {:if => proc{|o| o.restaurant.blank? }}

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5),
    message: "Rating should be between 0 and 5" }
end
