class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["french", "belgian", "italian", "japanese", "chinese"],
    message: "Not a valid category" }

end
