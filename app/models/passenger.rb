class Passenger < ApplicationRecord
  belongs_to :booking, inverse_of: :passengers

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
end