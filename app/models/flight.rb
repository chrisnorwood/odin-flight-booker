class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport', foreign_key: 'from_airport_id'
  belongs_to :to_airport,   class_name: 'Airport', foreign_key: 'to_airport_id'

  validates :from_airport_id, presence: true
  validates :to_airport_id,   presence: true
  validates :datetime,        presence: true
  validates :duration,        presence: true
end
