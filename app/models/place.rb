class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos

  validates :name, presence: true, length: { minimum: 3}
  validates :address, presence: true
  validates :description, presence: true
  
  geocoded_by :address
  after_validation :geocode
  
end
