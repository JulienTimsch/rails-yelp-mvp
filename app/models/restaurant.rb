CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  # validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES, message: "%{value} is not a valid category" }
end
