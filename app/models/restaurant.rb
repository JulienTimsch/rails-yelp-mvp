class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
