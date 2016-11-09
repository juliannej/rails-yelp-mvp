class Restaurant < ApplicationRecord
  before_validation :downcase_fields
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["french", "belgian", "italian", "japanese", "chinese"],
    message: "Not a valid category" }

  def downcase_fields
    self.category.downcase!
  end
end
