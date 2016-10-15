class Passenger < ApplicationRecord
  has_many :bookings
  has_many :flights, through: :bookings

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
end