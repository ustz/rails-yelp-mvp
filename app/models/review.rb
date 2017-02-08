class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, inclusion: { in: [1,2,3], allow_nil: false }

  belongs_to :restaurant
end
