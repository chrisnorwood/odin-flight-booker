class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport', foreign_key: 'from_airport_id'
  belongs_to :to_airport,   class_name: 'Airport', foreign_key: 'to_airport_id'

  validates :from_airport_id, presence: true
  validates :to_airport_id,   presence: true
  validates :datetime,        presence: true
  validates :duration,        presence: true

  def formatted_date
    datetime.strftime("%m/%d/%Y")
  end

  def self.select_dates
    self.pluck("distinct date(datetime)")
  end
end
