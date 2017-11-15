REVIEWS = [0, 1, 2, 3, 4, 5]

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: REVIEWS }, numericality: { only_integer: true}
end
