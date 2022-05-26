class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, in: (0..5) }, inclusion: {
    in: (0..5),
    message: 'value is not a valid size'
  }
end
