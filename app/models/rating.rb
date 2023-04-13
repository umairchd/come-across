class Rating < ApplicationRecord
  belongs_to :place

  enum category: [:food, :people, :landscape]

  validates :category, presence: true
  validates :value, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }


end