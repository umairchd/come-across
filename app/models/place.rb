class Place < ApplicationRecord
  geocoded_by :name
  after_validation :geocode

  validates :name, presence: true
  validates :date, presence: true


  has_many_attached :images
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  accepts_nested_attributes_for :ratings
end
